from django.shortcuts import render
from django.shortcuts import redirect
from django.contrib.auth import login
from django.contrib.auth import authenticate
from django.contrib import messages
from django.contrib.auth import logout
from .forms import *
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.utils import timezone
from core.models import *







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
            messages.success(request, 'Bienvenid@ {}'.format(user.username))
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

@login_required 
def home_two(request):
    return render(request, 'home2.html')


@login_required
def obtener_fechas_reservas_anteriores():
    reservas_anteriores = Reserva.objects.filter(event_date__lt=timezone.now().date())
    return [reserva.event_date for reserva in reservas_anteriores]


@login_required
def reservas_view(request):
    if request.method == 'POST':
        contact_form = formularioReserva(data=request.POST)

        if contact_form.is_valid():
            reserva = contact_form.save(commit=False)
            reserva.event_date = contact_form.cleaned_data['event_date']
            reserva.event_start_time = contact_form.cleaned_data['event_start_time']
            reserva.end_time_of_the_event = contact_form.cleaned_data['end_time_of_the_event']
            reserva.save()
            return redirect('tarjeta')

        else:
            messages.error(request, 'Hubo un error en el formulario')
            messages.success(request, 'Datos no permitidos')


    else:
        contact_form = formularioReserva()

    return render(request, 'reservas.html', {'form': contact_form})


@login_required
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


@login_required
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
            return redirect('home')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request,  'pqrs.html', {'form':contact_form})


@login_required
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
   

@login_required
def alquiler_view(request):
    contact_form_tipoP = TipoDeProducto.objects.all()
    contact_formcategoria = Category.objects.all()
    contact_formtipo = Product.objects.all()
    contact_form = formularioTipo(request.POST or None)
    contact_form_carrito = formularioCarrito(request.POST or None)
    if contact_form.is_valid():
        Tipo = TipoDeProducto.objects.get(id=1)
        tipo = contact_form.cleaned_data.get('Tipo')
        number = contact_form.cleaned_data.get('cantidad')
        opciones_nuevas = f'{Tipo}  :  {number}'
        opciones_anteriores = contact_form_carrito.data.get('elementos_alquilar', opciones_nuevas)
        opciones_actualizadas = f'{opciones_anteriores}\n{opciones_anteriores}'
        contact_form_carrito = formularioCarrito({'elementos_alquilar': opciones_actualizadas})
    else:
        messages.error(request, 'Las opciones son invalidas')

        
    return render(request,  'alquiler.html', {
        'Mesas':contact_form, 
        'Carrito':contact_form_carrito,
        'products': contact_formtipo,
        'Categoria':contact_formcategoria,
        'Tipo':contact_form_tipoP,
    })

@login_required
def productos(request):
    return render(request, 'productos.html',{
    })

def nosotros(request):
    return render(request, 'nosotros.html',{
    })

def crear_cotizacion(request):
    if request.method == 'POST':
        form = CotizacionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('cotizacion.html')  # Redirige a una página de éxito
    else:
        form = CotizacionForm()
    
    return render(request, 'cotizacion.html', {'form': form})




