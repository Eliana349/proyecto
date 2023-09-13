from django.shortcuts import render
from .forms import formularioRegistro
from django.shortcuts import redirect
from django.contrib.auth import login
from django.contrib.auth import authenticate
from django.contrib import messages


def index(request):
    return render(request, 'index.html',{
    })

def login_view(request):    
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        
        if user:
            login(request, user)
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('admin:index')
        else: 
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'login.html',{
    })
    
def register(request):
    contact_form = formularioRegistro()
    
    if request.method == 'POST':
        contact_form = formularioRegistro(data=request.POST)
        
        if contact_form.is_valid():
            contact_form.save()
            return redirect('login')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request, 'register.html', {'form':contact_form})

def account(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        
        if user:
            login(request, user)
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('admin:index')
        else: 
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'login.html')


def registration(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        
        if user:
            login(request, user)
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('login')
        else: 
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'register.html')
    
# Create your views here.
