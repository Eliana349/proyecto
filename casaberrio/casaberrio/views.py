from django.shortcuts import render
from django.shortcuts import redirect
from django.contrib.auth import login
from django.contrib.auth import authenticate
from django.contrib import messages
from django.contrib.auth import logout
from .forms import RegisterForm
from django.contrib.auth.models import User

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
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('home')
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
            
            messages.success(request, 'Usuario creado exitosamente')
            
            return redirect('home')
    else:
        form = RegisterForm()

    return render(request, 'register.html', {
        'form': form
    })

def account(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        
        if user:
            login(request, user)
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('index')
        else: 
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'login.html')


def logout_view(request):
    logout(request)
    messages.success(request,' Ha cerrado exitosamente la sesión')
    return redirect('login')

def registerviews(request):
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
            
            messages.success(request, 'Usuario creado exitosamente')
            
            return redirect('home')
    else:
        form = RegisterForm()

    return render(request, 'register.html', {
        'form': form
    })



