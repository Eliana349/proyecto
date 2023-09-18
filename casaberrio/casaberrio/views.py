from django.shortcuts import render
from django.shortcuts import redirect
from django.contrib.auth import login
from django.contrib.auth import authenticate
from django.contrib import messages
from django.contrib.auth import logout
from .forms import RegisterForm,formularioReserva,formularioAlquiler,formularioFedelizacion,formularioInventario,formularioPSE,formularioTarjetaDeCD
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

def index(request):
    return render(request, 'home.html',{
    })


def login_view(request):    
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        
        if user:
            login(request, user)
            return redirect('home2')
        else: 
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'login.html',{
    })



def register(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            names = form.cleaned_data.get('Names')
            surnames = form.cleaned_data.get('surnames')
            username = form.cleaned_data.get('username')
            email = form.cleaned_data.get('email')
            phone = form.cleaned_data.get('phone')
            password = form.cleaned_data.get('password')
            
            
            user = User.objects.create_user(username=username, email=email, password=password)
            user.first_name = names
            user.last_name = surnames
            user.save()
            
            login(request, user)
            return redirect('home2')
    else:
        form = RegisterForm()

    return render(request, 'register.html', {
        'form': form
    })
    
@login_required(login_url='/accounts/login')
def home_two(request):
    return render(request, 'home2.html')

def reservas_view(request):
    contact_form = formularioReserva()
    
    if request.method == 'POST':
        contact_form = formularioReserva(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('tarjeta')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'reservas.html', {'form':contact_form})

def pse_view(request):
    contact_form = formularioPSE()
    
    if request.method == 'POST':
        contact_form = formularioPSE(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('home2')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'PSE.html', {'form':contact_form})

def tajetacd_view(request):
    contact_form = formularioTarjetaDeCD()
    
    if request.method == 'POST':
        contact_form = formularioTarjetaDeCD(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('home2')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'tarjetacd.html', {'form':contact_form})

def fidelizacion_view(request):
    contact_form = formularioFedelizacion()
    
    if request.method == 'POST':
        contact_form = formularioFedelizacion(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('home2')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'pqrs.html', {'form':contact_form})

def inventario_view(request):
    contact_form = formularioInventario()
    
    if request.method == 'POST':
        contact_form = formularioInventario(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('home2')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'pqrs.html', {'form':contact_form})

def alquiler_view(request):
    contact_form = formularioAlquiler()
    
    if request.method == 'POST':
        contact_form = formularioAlquiler(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('tarjeta')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'alquiler.html', {'form':contact_form})


def productos(request):
    return render(request, 'productos.html',{
    })
    
def nosotros(request):
    return render(request, 'nosotros.html',{
    })






