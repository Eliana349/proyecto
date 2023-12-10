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
from django.core.mail import send_mail


import openpyxl
from django.http import HttpResponse
from django.contrib.auth.decorators import user_passes_test
from django.urls import reverse
from openpyxl import Workbook
from core.models import Product
from openpyxl.styles import NamedStyle


def es_admin(user):
    return user.is_authenticated and user.is_staff

def redireccionar_admin(request):
    admin_url = reverse('admin:index')
    return redirect(admin_url)

def custom_excel_report(request):
    # Crear un libro de trabajo y obtener la hoja activa
    workbook = Workbook()
    sheet = workbook.active

    date_style = NamedStyle(name='date_style', number_format='YYYY-MM-DD HH:MM:SS')

    # Añadir encabezados a la hoja de cálculo
    headers = ['ID', 'Imagen', 'Nombre', 'Fecha de Creación', 'Categoría', 'Precio', 'Cantidad']
    for col_num, header in enumerate(headers, 1):
        sheet.cell(row=1, column=col_num, value=header)

    # Obtener datos del modelo
    products = Product.objects.all()

    # Llenar la hoja de cálculo con los datos del modelo
    for row_num, product in enumerate(products, 2):
        sheet.cell(row=row_num, column=1, value=product.id)
        sheet.cell(row=row_num, column=2, value=str(product.imagen))
        sheet.cell(row=row_num, column=3, value=product.nombre)
        
        created_at_formatted = product.created_at.strftime('%Y-%m-%d %H:%M:%S')
        sheet.cell(row=row_num, column=4, value=created_at_formatted).style = date_style

        sheet.cell(row=row_num, column=5, value=str(product.categoria))
        sheet.cell(row=row_num, column=6, value=product.precio)
        sheet.cell(row=row_num, column=7, value=product.cantidad)
        

    # Crear una respuesta de Django con el contenido del libro de trabajo
    response = HttpResponse(content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    response['Content-Disposition'] = 'attachment; filename=custom_excel_report.xlsx'
    workbook.save(response)

    return response


def generate_excel_report(request):
    # Crear un nuevo libro de Excel y una hoja de cálculo
    workbook = openpyxl.Workbook()
    sheet = workbook.active

    # Escribir encabezados en la primera fila
    headers = ['Nombres', 'Apellidos', 'Correo electrónico', 'Número de celular', 'Género', 'Fecha de evento', 'Hora inicial', 'Hora final', 'Tematica', 'Descripción', 'Necesidad especial', 'Tipo de evento', 'Sede', 'Salón']
    for col_num, header in enumerate(headers, 1):
        sheet.cell(row=1, column=col_num, value=header)

    # Obtener datos de la base de datos y escribir en el archivo Excel
    reservations = Reserva.objects.all()
    for row_num, reservation in enumerate(reservations, 1):
        data = [
            reservation.name, reservation.lastname, reservation.email,
            str(reservation.phone),  # Convertir PhoneNumber a cadena
            reservation.gender, reservation.event_date, reservation.event_start_time,
            reservation.end_time_of_the_event, reservation.theme, reservation.description,
            reservation.special_need, reservation.eventType, reservation.campus, reservation.lounge
        ]

        # Escribir los datos en las celdas de Excel
        for col_num, value in enumerate(data, 1):
            sheet.cell(row=row_num + 1, column=col_num, value=value)

    # Crear la respuesta HTTP con el archivo adjunto
    response = HttpResponse(content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    response['Content-Disposition'] = 'attachment; filename=reporte_reservas.xlsx'
    workbook.save(response)

    return response






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
            # Guardar el formulario
            contacto = contact_form.save()

            # Envía un correo electrónico de confirmación
            subject = 'Confirmación de Pago PSE'
            message = '¡Gracias por tu pago! Tu transacción ha sido procesada con éxito.'
            from_email = 'casaberrio23@gmail.com'  # Cambia esto al correo desde el cual deseas enviar
            recipient_list = [contacto.email]  # Ajusta según el nombre real de tu campo de correo electrónico

            send_mail(subject, message, from_email, recipient_list, fail_silently=False)

            # Redirige a la página de inicio o a donde desees después de un envío exitoso
            return redirect('home2')
            
        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
        
    return render(request, 'PSE.html', {'form': contact_form})

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
        Tipo = request.POST.get('option1')
        number = contact_form.cleaned_data.get('cantidad')
        filterr = TipoDeProducto.objects.get(nombre=Tipo)
        price = filterr.precio
        precio = number * price
        producto = filterr.product
        opciones_nuevas = f'{producto}  :  {Tipo}  :  {number}  :  ${precio}'
        opciones_guardadas = request.session.get('opciones_alquiler', [])
        opciones_guardadas.append(opciones_nuevas)
        request.session['opciones_alquiler'] = opciones_guardadas
        opciones_en_carrito = '\n'.join(opciones_guardadas)
        contact_form_carrito = formularioCarrito({'elementos_alquilar': opciones_en_carrito})
    else:
        messages.error(request, 'Las opciones son inválidas')

    return render(request, 'alquiler.html', {
        'cantidad': contact_form, 
        'Carrito': contact_form_carrito,
        'products': contact_formtipo,
        'Categoria': contact_formcategoria,
        'Tipo': contact_form_tipoP,
    })

def precio_total(request):
    contact_form = formularioTipo(request.POST or None)
    if contact_form.is_valid():
        cantidad = contact_form.cleaned_data.get('cantidad')
        precio = TipoDeProducto.precio
        cantidad = TipoDeProducto.cantidad
        opciones_guardadas = request.session.get('opciones_alquiler', [])
        opciones_guardadas.append(cantidad)
        request.session['opciones_alquiler'] = opciones_guardadas
        for price,amount in zip(precio,opciones_guardadas):
            price_amount = amount * price
            return price_amount  

def limpiar_sesion(request):
    del request.session['opciones_alquiler']
    
    return HttpResponse("Sesión limpiada")    
        

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
            return redirect('reservas.html')  # Redirige a una página de éxito
    else:
        form = CotizacionForm()
    
    return render(request, 'cotizaciones.html', {'form': form})

def cotizacion_vista(request):
    return render(request, 'cotizacion.html',{
    })



