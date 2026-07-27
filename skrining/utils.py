from decimal import Decimal
from .models import Kriteria, PengaturanRisiko

def hitung_cf(data_profil, gejala_klinis_cf_user):
    # 1. Ambil semua CF Pakar langsung dari Database
    kriteria_db = {k.kode: k.nilai_cf_pakar for k in Kriteria.objects.all()}
    
    # --- RUMUS RISIKO BAWAAN DINAMIS ---
    # Konversi usia ke Decimal untuk dihitung bareng angka Decimal lainnya
    usia_decimal = Decimal(data_profil['usia'])
    
    # Menghasilkan nilai CF dasar yang unik tiap pasien berdasarkan Usia dan BB
    # Semua angka float diubah jadi Decimal('angka')
    cf_dasar = round((usia_decimal * Decimal('0.006')) + (data_profil['berat_badan'] * Decimal('0.002')), 3)
    cf_terdeteksi = [cf_dasar] 

    # Pastikan data kriteria sudah diinput oleh Admin di database agar tidak error
    if not kriteria_db:
        return Decimal('0.0'), "Error", "Data Kriteria kosong. Minta Admin untuk mengisi data kriteria terlebih dahulu."

    # Kriteria Profil Otomatis (biarkan sisanya sama persis ke bawah)
    if data_profil['usia'] < 20 or data_profil['usia'] > 35:
        cf_terdeteksi.append(kriteria_db.get('PR01', Decimal('0.67')) * Decimal('1.0'))
    
    # Kriteria Gejala Klinis dari Bidan
    for kode_gejala, cf_user in gejala_klinis_cf_user.items():
        if cf_user > Decimal('0'):
            cf_terdeteksi.append(kriteria_db.get(kode_gejala, Decimal('0.67')) * cf_user)

    # Rumus CF Combine
    if not cf_terdeteksi:
        cf_combine = Decimal('0.0')
    else:
        cf_combine = cf_terdeteksi[0]
        for i in range(1, len(cf_terdeteksi)):
            cf_combine = cf_combine + (cf_terdeteksi[i] * (Decimal('1') - cf_combine))

    persentase = round(cf_combine * Decimal('100'), 2)

    # 2. Ambil Pengaturan Risiko dari Database
    pengaturan_normal = PengaturanRisiko.objects.filter(kategori__icontains="Normal").first()
    pengaturan_berisiko = PengaturanRisiko.objects.filter(kategori__icontains="Berisiko").first()

    # Kita jadikan "Batas Berisiko" (50) sebagai patokan utama
    batas_berisiko = pengaturan_berisiko.batas_persentase if pengaturan_berisiko else Decimal('50.0')

    status = ""
    keterangan = ""

    # 3. PENGGUNAAN SWITCH CASE (Match-Case) SESUAI REVISI DOSPEM
    match persentase:
        case p if p >= batas_berisiko:
            # Jika 50% atau lebih, maka Berisiko
            status = "Berisiko"
            keterangan = pengaturan_berisiko.keterangan_medis if pengaturan_berisiko else "Pasien teridentifikasi Risiko Tinggi! Segera buat rujukan."
        case _:
            # Sisa nilai di bawah 50% masuk ke Normal
            status = "Normal"
            keterangan = pengaturan_normal.keterangan_medis if pengaturan_normal else "Kondisi kehamilan Normal."

    return persentase, status, keterangan