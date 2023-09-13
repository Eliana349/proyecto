"""
URL configuration for casaberrio project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('admin/', admin.site.urls, name='admin:home'),
    path('', views.index, name='home'),
    path('login/', views.login_view, name='login'),
    path('register/', views.register, name='register'),
    path('register/login.html', views.login),
    path('register/logout.html', views.account),
    path('logout/', views.logout_view, name='logout'),
    path('login/reservas.html', views.registerviews, name='login'),
    path('reservas/', views.reservas_views, name='reservas'),
    path('ventas/', views.ventas_views, name='ventas'),
    path('reservas/ventas.html', views.ventas_views, name='ventas'),
    
    
]


