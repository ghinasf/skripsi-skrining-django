from django.contrib import admin
from django.contrib.auth.models import Group # Import ini wajib
from .models import Pasien, Kriteria, PengaturanRisiko

# 1. Unregister Group agar hilang dari dashboard admin
admin.site.unregister(Group)

# 2. Registrasikan Kriteria dan PengaturanRisiko seperti biasa
admin.site.register(Kriteria)
admin.site.register(PengaturanRisiko)

# 3. Komen atau hapus baris di bawah ini agar model Pasien tidak muncul di admin
# admin.site.register(Pasien)