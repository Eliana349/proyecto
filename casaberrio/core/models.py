from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from django import forms
from phonenumber_field.modelfields import PhoneNumberField
import random
from django.contrib.auth.models import User
from datetime import *






class Reserva(models.Model):
    TEMATICA_CHOICES = (
    ('Campestre', 'Campestre'),
    ('Neon', 'Neon'),
    ('Alfombra_Roja', 'Alfombra Roja'),
    ('Personaje_Disney', 'Personaje Disney'),
    ('Flores', 'Flores'),
    ('Noche_estrellas', 'Noche de Estrellas'),
    ('Tropical', 'Tropical'),
    ('Mariposas', 'Mariposas'),
)
    NECECIDAD_CHOICES = (
    ('Campo_silla_de_redas', 'Campo silla de redas'),
    ('Comunicador_de_lenguaje_de_señas ', 'Comunicador de lenguaje de señas '),
)

    name = models.CharField(max_length=50,verbose_name='Nombres', )
    lastname = models.CharField(max_length=50, verbose_name='Apellidos')
    email = models.EmailField(max_length=50, verbose_name='Correo electronico')
    phone = PhoneNumberField(verbose_name='Numero de celular',region='CO')
    gender = models.CharField(max_length=30, verbose_name='Genero')
    event_date = models.DateField( verbose_name='Fecha de evento')
    event_start_time = models.TimeField(verbose_name='Hora inicial del evento')
    end_time_of_the_event = models.TimeField(verbose_name='Hora final del evento')
    eventType = models.CharField (max_length=200, verbose_name='Tipo de evento')
    theme = models.CharField(max_length=200, verbose_name='Tematica',choices=TEMATICA_CHOICES,default='Mariposas')
    special_need = models.CharField( max_length=200,verbose_name='Necesidad especial', choices=NECECIDAD_CHOICES,default='Campo_silla_de_redas' )
    campus = models.CharField (max_length=200, verbose_name='Sede' )
    lounge = models.CharField(max_length=200,verbose_name='Salón' )
    Total_value = forms.IntegerField(
    widget=forms.NumberInput,
    label='Valor Total'
)
    
    def __str__(self):
        return str(self.event_date)
    
    class Meta:
        verbose_name = 'Reserva'
        verbose_name_plural = 'Reservas'
        db_table = 'Reserva'
        ordering = ['id']  



class Cotizacion(models.Model):
    name = models.CharField(max_length=100, verbose_name="Nombre Completo")
    email = models.EmailField(verbose_name="Correo Electrónico")
    phone_number = models.CharField(max_length=10, verbose_name="Número de Teléfono")
    event_type = models.CharField(max_length=100, verbose_name="Tipo de Evento")
    event_date = models.DateField(verbose_name="Fecha del Evento")
    event_duration = models.PositiveIntegerField(
        verbose_name="Duración del Evento (horas)",
        validators=[
            MinValueValidator(4, message='La duración debe ser como mínimo 4 horas.'),
            MaxValueValidator(7, message='La duración no puede ser mayor a 7 horas.'),
        ]
    )
    event_location = models.CharField(max_length=100, verbose_name="Sede del Evento")
    salon_number = models.CharField(max_length=100, verbose_name='Número del salon')
    number_of_guests = models.PositiveIntegerField(verbose_name="Cantidad de Invitados")
    menu = models.CharField(max_length=20, verbose_name="Menú")
    childrens_menu = models.PositiveIntegerField(max_length=20, verbose_name="Cantidad de Menús Infantiles")
    additional_entries = models.CharField(max_length=20, verbose_name="Entradas Adicionales", default='Ninguna')
    additional_comments = models.TextField(verbose_name="Comentarios Adicionales")
    additional_services = models.CharField(max_length=200, verbose_name="Servicios Adicionales")
    required_services = models.TextField(max_length=200, verbose_name="Servicios Requeridos del Paquete Base")
    theme = models.CharField(max_length=200, verbose_name='Tematica',default='Mariposas')
    special_need = models.CharField( max_length=200,verbose_name='Necesidad especial',default='Campo_silla_de_ruedas')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'cotización'
        verbose_name_plural = 'cotizaciones'
        db_table = 'cotizacion'
        ordering = ['id']
    
    

class Cotizacion(models.Model):
    name = models.CharField(max_length=100, verbose_name="Nombre Completo")
    email = models.EmailField(verbose_name="Correo Electrónico")
    phone_number = models.CharField(max_length=10, verbose_name="Número de Teléfono")
    event_type = models.CharField(max_length=100, verbose_name="Tipo de Evento")
    event_date = models.DateField(verbose_name="Fecha del Evento")
    event_duration = models.PositiveIntegerField(
        verbose_name="Duración del Evento (horas)",
        validators=[
            MinValueValidator(4, message='La duración debe ser como mínimo 4 horas.'),
            MaxValueValidator(7, message='La duración no puede ser mayor a 7 horas.'),
        ]
    )
    event_location = models.CharField(max_length=100, verbose_name="Sede del Evento")
    salon_number = models.CharField(max_length=100, verbose_name='Número del salon')
    number_of_guests = models.PositiveIntegerField(verbose_name="Cantidad de Invitados")
    menu = models.CharField(max_length=20, verbose_name="Menú")
    childrens_menu = models.PositiveIntegerField(max_length=20, verbose_name="Cantidad de Menús Infantiles")
    additional_entries = models.CharField(max_length=20, verbose_name="Entradas Adicionales", default='Ninguna')
    additional_comments = models.TextField(verbose_name="Comentarios Adicionales")
    additional_services = models.CharField(max_length=200, verbose_name="Servicios Adicionales")
    required_services = models.TextField(max_length=200, verbose_name="Servicios Requeridos del Paquete Base")
    theme = models.CharField(max_length=200, verbose_name='Tematica',default='Mariposas')
    special_need = models.CharField( max_length=200,verbose_name='Necesidad especial',default='Campo_silla_de_ruedas')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'cotización'
        verbose_name_plural = 'cotizaciones'
        db_table = 'cotizacion'
        ordering = ['id']
    
    

            
class TypeId(models.Model):
    type_id = models.CharField(max_length=100, verbose_name='Tipo de identificacion')
    
    def __str__(self):
        return self.type_id

    class Meta:
        verbose_name = 'Tipo de identificacion'
        verbose_name_plural = 'Tipo de identificaciones'
        db_table = 'Tipo de identificacion'
        ordering = ['id']
            
class SelectBank(models.Model):
    select_bank = models.CharField(max_length=20, verbose_name='Seleccion de banco')
    
    def __str__(self):
        return self.select_bank

    class Meta:
        verbose_name = 'Seleccion de banco'
        verbose_name_plural = 'Seleccion de bancos'
        db_table = 'Seleccion de banco'
        ordering = ['id']
        
class TypePerson(models.Model):
    type_person = models.CharField(max_length=20, verbose_name='Tipo de persona')
    
    def __str__(self):
        return self.type_person

    class Meta:
        verbose_name = 'Tipo de persona'
        verbose_name_plural = 'Tipo de personas'
        db_table = 'Tipo de persona'
        ordering = ['id']
    
class PSE(models.Model):
    type_person = models.ForeignKey(TypePerson, on_delete=models.CASCADE,verbose_name='Tipo de persona')
    select_bank = models.ForeignKey(SelectBank, on_delete=models.CASCADE, verbose_name='Seleccione su Banco')
    full_name = models.CharField(max_length=100, verbose_name='Nombre Completo')
    type_id = models.ForeignKey(TypeId,on_delete=models.CASCADE, verbose_name='Tipo de Identificación')
    identification_number= models.PositiveIntegerField(verbose_name='Numero de indentificacion')
    email = models.EmailField(verbose_name='Correo electronico')
    phone_number = PhoneNumberField(verbose_name='Numero de telefono')
    
    def __str__(self):
        return self.full_name

    class Meta:
        verbose_name = 'PSE Cuenta de ahorro y corriente'
        verbose_name_plural = 'PSE Cuentas de ahorro y corrientes'
        db_table = 'PSE Cuenta de ahorro y corriente'
        ordering = ['id']
        
class TarjetaDeCD(models.Model):
    full_name = models.CharField(max_length=100, verbose_name='Nombre Completo')
    card_number= models.PositiveIntegerField(verbose_name='Numero de Tarjeta')
    expiration = models.CharField(verbose_name='Vencimiento', max_length=5)
    
    def __str__(self):
        return self.full_name

    class Meta:
        verbose_name = 'Tarjeta de credito y debito'
        verbose_name_plural = 'Tarjetas de credito y debito'
        db_table = 'Tarjeta de credito y debito'
        ordering = ['id']
 
class Category(models.Model):
    titulo = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return str(self.titulo)

    class Meta:
        verbose_name = 'Categoria alquiler'
        verbose_name_plural = 'Categorias alquileres'
        db_table = 'categoria_alquilar'
        ordering = ['id']


class Product(models.Model):
    imagen = models.ImageField(upload_to='products/', null=False, unique=True)
    nombre = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    categoria = models.ForeignKey(Category, on_delete=models.CASCADE)
    
    
    def __str__(self):
        return str(self.nombre)

    class Meta:
        verbose_name = 'Producto alquiler'
        verbose_name_plural = 'Producto alquiler'
        db_table = 'Producto_alquiler'
        ordering = ['id']


class TipoDeProducto(models.Model):
    nombre = models.CharField(max_length=20)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    precio = models.DecimalField(max_digits=8, decimal_places=0)
    cantidad = models.IntegerField(verbose_name='cantidad')
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return str(self.nombre)

    class Meta:
        verbose_name = 'Tipo de producto alquilar'
        verbose_name_plural = 'Tipos de productos alquilar'
        db_table = 'Tipo_de_producto_alquilar'
        ordering = ['id']
             

class Carrito(models.Model):
    nombre_usuario = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='Nombre de usuario')
    date_start = models.DateTimeField(verbose_name='Fecha de inicio')
    date_finish = models.DateTimeField(verbose_name='Fecha de finalizacion')
    elementos_alquilar =  models.TextField(max_length=1000 , verbose_name='Elementos seleccionados')
    precio_total = models.IntegerField(verbose_name='Precio Total')
    
    def __str__(self):
        return str(self.nombre_usuario)

    class Meta:
        verbose_name = 'Alquiler'
        verbose_name_plural = 'Alquileres'
        db_table = 'Alquiler'
        ordering = ['id']

class TypeOFinput(models.Model):
    type_of_input = models.CharField(max_length=100,verbose_name= 'Tipo de insumo')
    
    def __str__(self):
        return self.type_of_input

    class Meta:
        verbose_name='Tipo de insumo'
        verbose_name_plural='Tipo de insumos'
        db_table='Tipo de insumo'
        ordering=['id']

class TypeOFinput(models.Model):
    type_of_input = models.CharField(max_length=100,verbose_name= 'Tipo de insumo')
    
    def __str__(self):
        return self.type_of_input

    class Meta:
        verbose_name='Tipo de insumo'
        verbose_name_plural='Tipo de insumos'
        db_table='Tipo de insumo'
        ordering=['id']

class Inventory(models.Model):
    type_of_input = models.ForeignKey(TypeOFinput, on_delete=models.CASCADE)
    product_name = models.CharField(max_length=100,verbose_name ='Nombre del producto')
    product_code = models.PositiveIntegerField(verbose_name='Codigo de producto')
    product_price = models.PositiveIntegerField (verbose_name='Precio de producto')
    amount = models.PositiveIntegerField(verbose_name='Cantidad')
    product_characteristics = models.TextField(max_length=300, verbose_name='Caracterista de producto')

    def __str__(self):
        return self.product_name

    class Meta:
        verbose_name='Inventario'
        verbose_name_plural='Inventarios'
        db_table='inventario'
        ordering=['id']

class Supplier (models.Model):
    nit = models.PositiveIntegerField(verbose_name = 'NIT')
    company_name = models.CharField(max_length =100, verbose_name = 'Nombre empresa')
    inventory = models.ForeignKey (Inventory, on_delete=models.CASCADE)

    def __str__ (self):
        return self.company_name

    class Meta:
        verbose_name='Proveedor'
        verbose_name_plural='Proveedores'
        db_table='proveedor'
        ordering=['id']



class StateProduct(models.Model):
    ESTADOP_CHOICES = (
        ('Activo ', 'Activo '),
        ('Inactivo ', 'Inactivo '),
    )
    estadoP = models.CharField(max_length=20, choices=ESTADOP_CHOICES, default='Activo ')
    inventory = models.ForeignKey(Inventory, on_delete=models.CASCADE, null=True)
    def __str__(self):
        return self.estadoP

    class Meta:
        verbose_name = 'Estado Producto'
        verbose_name_plural = 'Estados productos'
        db_table = 'estado_producto'
        ordering = ['id']

        
class TypePqrsd(models.Model):
    type_pqrsd = models.CharField(max_length=100,verbose_name= 'Tipo pqrsd')
    
    def __str__(self):
        return self.type_pqrsd

    class Meta:
        verbose_name='Tipo pqrsd'
        verbose_name_plural='Tipos pqrsd'
        db_table='tipo pqrsd'
        ordering=['id']
        
               
class PreferenceContact(models.Model):
    preference_contact = models.CharField(max_length=100,verbose_name= 'Como prefire ser contactado')
    
    def __str__(self):
        return self.preference_contact

    class Meta:
        verbose_name='Como prefire ser contactado'
        verbose_name_plural='Como prefire ser contactado'
        db_table='Como prefire ser contactado'
        ordering=['id']
    
def generate_random_radicado():
    return random.randint(100000, 999999)

class product_or_services_name(models.Model):
    product_or_services_name = models.CharField(max_length= 100, verbose_name= 'Nombre del producto/servicio')

    def __str__(self):
        return self.product_or_services_name
    
    class Meta:
        verbose_name= 'Nombre de producto/servicio'
        verbose_name_plural='Nombre de productos/servicios'
        db_table= 'Nombre de producto/servicio'
        ordering= ['id']
        


class loyalty(models.Model):
    PROD_SER_CHOICES = (
    ('Atencion al cliente', 'Atencion al cliente'),
    ('bebidas ', 'bebidas'),
    ('banquetes','banquetes'),
    ('decoracion','decoracion'),
    
)


    full_name = models.CharField(max_length=100, verbose_name='Nombres y apellidos')
    email = models.EmailField(verbose_name='Correo electrónico')
    phone = PhoneNumberField(verbose_name='Número de teléfono', region='CO')
    type_pqrsd = models.ForeignKey(TypePqrsd, on_delete=models.CASCADE,verbose_name='Tipo de PQRSD')
    incident_date = models.DateField(verbose_name='Fecha de incidente')
    detailed_description = models.TextField(max_length=300, verbose_name='Descripción detallada')
    product_or_services_name = models.CharField( max_length=200,verbose_name='Producto o servicio', choices=PROD_SER_CHOICES,default='Atencion_al _cliente' )    
    filing_number = models.PositiveIntegerField(verbose_name='Guarde el Número de radicado para consultar el estado de su PQRSD', default=generate_random_radicado,)  
    preference_contact = models.ForeignKey(PreferenceContact, on_delete=models.CASCADE, verbose_name='Como prefiere ser contactad@', help_text='&nbsp')

        


    def _str_(self):
        return str(self.filing_number)

    def save(self, *args, **kwargs):
        if not self.filing_number:
          
            self.filing_number = random.randint(100000, 999999)
        super().save(*args, **kwargs)

    class Meta:
        verbose_name = 'Fidelizacion'
        verbose_name_plural = 'Fidelizaciones'
        db_table = 'fidelizacion'
        ordering = ['id']
  

class StatePqrsd(models.Model):
    ESTADO_CHOICES = (
        ('Pendiente', 'Pendiente'),
        ('En proceso', 'En proceso'),
        ('Resuelto', 'Resuelto'),
        ('Cerrado', 'Cerrado'),
    )
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES, default='Pendiente')
    loyalty = models.ForeignKey(loyalty, on_delete=models.CASCADE, null=True)
    def __str__(self):
        return self.estado

    class Meta:
        verbose_name = 'Estado pqrsd'
        verbose_name_plural = 'Estados pqrsd'
        db_table = 'estado_pqrsd'
        ordering = ['id']


class DetalleCompra(models.Model):
    cotizacion = models.ForeignKey(Cotizacion, on_delete=models.CASCADE, related_name='detalles_compra')
    Product = models.ForeignKey(Product, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField()
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)
    subtotal = models.DecimalField(max_digits=10, decimal_places=2)

    def save(self, *args, **kwargs):
        self.subtotal = self.cantidad * self.precio_unitario
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.cantidad} x {self.producto.nombre}"