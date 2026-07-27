from django.db import models

class Pasien(models.Model):
    nama = models.CharField(max_length=100)
    usia = models.IntegerField()
    tinggi_badan = models.DecimalField(max_digits=5, decimal_places=2)
    berat_badan_trimester_1 = models.DecimalField(max_digits=5, decimal_places=2)
    jarak_kehamilan = models.DecimalField(max_digits=4, decimal_places=2)
    jumlah_paritas = models.IntegerField()
    persentase_risiko = models.DecimalField(max_digits=5, decimal_places=2, null=True, blank=True)
    status_risiko = models.CharField(max_length=50, null=True, blank=True)
    keterangan_medis = models.TextField(null=True, blank=True)
    tanggal_skrining = models.DateField(null=True, blank=True)

    class Meta:
        verbose_name_plural = "Data Pasien" # Memperbaiki nama di Admin

    def __str__(self):
        return self.nama

class Kriteria(models.Model):
    kode = models.CharField(max_length=10, unique=True)
    nama_kriteria = models.TextField()
    nilai_cf_pakar = models.DecimalField(max_digits=3, decimal_places=2)

    class Meta:
        verbose_name_plural = "Data Kriteria CF" # Memperbaiki nama di Admin

    def __str__(self):
        return f"{self.kode} - {self.nama_kriteria}"

class PengaturanRisiko(models.Model):
    kategori = models.CharField(max_length=50)
    batas_persentase = models.DecimalField(max_digits=5, decimal_places=2)
    keterangan_medis = models.TextField()

    class Meta:
        verbose_name_plural = "Pengaturan Batas Risiko" # Memperbaiki nama di Admin

    def __str__(self):
        return f"Pengaturan: {self.kategori}"