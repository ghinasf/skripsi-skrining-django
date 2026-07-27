from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from decimal import Decimal  # <-- TAMBAHAN IMPORT DECIMAL
from .models import Pasien, Kriteria
from .utils import hitung_cf

def login_view(request):
    pesan_error = None # Siapkan variabel penampung error
    
    if request.method == 'POST':
        user = authenticate(request, username=request.POST['username'], password=request.POST['password'])
        if user is not None:
            login(request, user)
            return redirect('dashboard')
        else:
            # Jika user None (salah username/password), isi pesannya
            pesan_error = "Username atau password salah! Silakan coba lagi."
            
    # Lempar pesan_error ke halaman login
    return render(request, 'login.html', {'pesan_error': pesan_error})

def logout_view(request):
    logout(request)
    return redirect('login')

@login_required(login_url='login')
def dashboard(request):
    pasien_list = Pasien.objects.all().order_by('-tanggal_skrining')
    return render(request, 'dashboard.html', {'pasien_list': pasien_list})

@login_required(login_url='login')
def skrining_view(request):
    # Mengambil kriteria dari database (selain kriteria profil otomatis yang kodenya PR)
    kriteria_gejala = Kriteria.objects.exclude(kode__startswith='PR').order_by('kode')

    if request.method == 'POST':
        data_profil = {
            'usia': int(request.POST.get('usia', 0)),
            # UBAH float() JADI Decimal(), kasih default string '0'
            'tinggi_badan': Decimal(request.POST.get('tinggi_badan', '0')),
            'berat_badan': Decimal(request.POST.get('berat_badan', '0')),
            'jarak_kehamilan': Decimal(request.POST.get('jarak_kehamilan', '0')),
            'jumlah_paritas': int(request.POST.get('jumlah_paritas', 0)),
        }
        
        # Tangkap input tanggal dari form HTML
        tanggal_input = request.POST.get('tanggal_skrining')
        
        # Looping dinamis menangkap jawaban "Ya/Tidak" berdasarkan kriteria dari database Admin
        gejala_klinis_cf_user = {}
        for k in kriteria_gejala:
            nilai = request.POST.get(k.kode, '0.0')
            # UBAH float() JADI Decimal()
            gejala_klinis_cf_user[k.kode] = Decimal(nilai)

        # Mengambil 3 nilai return dari utils (termasuk keterangan)
        persentase, status, keterangan = hitung_cf(data_profil, gejala_klinis_cf_user)

        # Simpan ke database beserta tanggal inputan bidan
        pasien = Pasien.objects.create(
            nama=request.POST['nama'],
            usia=data_profil['usia'],
            tinggi_badan=data_profil['tinggi_badan'],
            berat_badan_trimester_1=data_profil['berat_badan'],
            jarak_kehamilan=data_profil['jarak_kehamilan'],
            jumlah_paritas=data_profil['jumlah_paritas'],
            tanggal_skrining=tanggal_input, # Menyimpan tanggal kunjungan
            persentase_risiko=persentase,
            status_risiko=status,
            keterangan_medis=keterangan 
        )
        
        # Diarahkan ke halaman detail hasil spesifik berdasarkan ID pasien
        return redirect('hasil_skrining', id=pasien.id)
    
    # Lempar variabel kriteria_gejala ke form HTML
    return render(request, 'skrining.html', {'kriteria_gejala': kriteria_gejala})

# Fungsi untuk render halaman Detail Hasil
@login_required(login_url='login')
def hasil_skrining(request, id):
    pasien = get_object_or_404(Pasien, id=id)
    # Mengarahkan ke detail_hasil.html dengan alias 'p' agar sesuai dengan kode HTML lo
    return render(request, 'detail_hasil.html', {'p': pasien})

@login_required(login_url='login')
def delete_pasien(request, id):
    pasien = get_object_or_404(Pasien, id=id)
    pasien.delete()
    return redirect('dashboard')