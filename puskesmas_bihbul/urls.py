from django.contrib import admin
from django.urls import path
from django.contrib.auth import views as auth_views # 1. Tambahkan ini
from skrining import views

urlpatterns = [
    path('admin/', admin.site.urls),
    
    # 2. Tambahkan pintasan logout admin ini (tepat di bawah path admin)
    path('admin/logout/', auth_views.LogoutView.as_view(next_page='dashboard'), name='admin_logout'),
    
    path('', views.login_view, name='login'),
    path('logout/', views.logout_view, name='logout'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('skrining/', views.skrining_view, name='skrining'),
    path('hasil/<int:id>/', views.hasil_skrining, name='hasil_skrining'),
    path('delete/<int:id>/', views.delete_pasien, name='delete_pasien'),
]