from django.db import models
from django import forms
from phonenumber_field.modelfields import PhoneNumberField
import random







class Reserva(models.Model):
    name = models.CharField(max_length=50,verbose_name='Nombres', )
    lastname = models.CharField(max_length=50, verbose_name='Apellidos')
    email = models.EmailField(max_length=50, verbose_name='Correo electronico')
    phone = PhoneNumberField(verbose_name='Numero de celular')
    gender = models.CharField(max_length=30)
    event_date = models.DateTimeField( verbose_name='Fecha de evento')
    event_start_time = models.TimeField(verbose_name='Hora inicial del evento')
    theme = models.CharField(max_length=200, verbose_name='Tematica')
    description = models.CharField(max_length=500,  verbose_name='Descripcion')
    special_need = models.CharField(max_length=200, verbose_name='Necesidad especial (Personas discapacitadas)')
    guest_document = models.CharField(max_length=200, verbose_name='Documento invitado')
    type_pay = models.CharField(max_length=200)
    eventType = models.CharField (max_length=200)
    campus = models.CharField (max_length=200 )
    lounge = models.CharField(max_length=200 )
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'Reserva'
        verbose_name_plural = 'Reservas'
        db_table = 'Reserva'
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
    type_person = models.ForeignKey(TypePerson, on_delete=models.CASCADE)
    select_bank = models.ForeignKey(SelectBank, on_delete=models.CASCADE)
    full_name = models.CharField(max_length=100, verbose_name='Nombre Completo')
    type_id = models.ForeignKey(TypeId,on_delete=models.CASCADE)
    identification_number= models.PositiveIntegerField(verbose_name='Numero de indentificacion')
    email = models.EmailField(verbose_name='Correo electronico')
    phone_number = PhoneNumberField(verbose_name='Numero de telefono')
    
    def __str__(self):
        return self.names_lastnames

    class Meta:
        verbose_name = 'PSE Cuenta de ahorro y corriente'
        verbose_name_plural = 'PSE Cuentas de ahorro y corrientes'
        db_table = 'PSE Cuenta de ahorro y corriente'
        ordering = ['id']
        
class TarjetaDeCD(models.Model):
    full_name = models.CharField(max_length=100, verbose_name='Nombre Completo')
    card_number= models.PositiveIntegerField(verbose_name='Numero de Tarjeta')
    expiration = models.DateField(verbose_name='Vencimiento')
    
    def __str__(self):
        return self.full_name

    class Meta:
        verbose_name = 'Tarjeta de credito y debito'
        verbose_name_plural = 'Tarjetas de credito y debito'
        db_table = 'Tarjeta de credito y debito'
        ordering = ['id']
 
class Rent(models.Model):
    full_name = models.CharField(max_length=100, verbose_name='Nombres Completos')
    phone = models.PositiveIntegerField(verbose_name='Numero Celular')
    rental_date_and_time = models.DateField(verbose_name='Fecha y hora de incio')
    return_date_and_time_f =models.DateField(verbose_name='Fecha y hora de finalizacion')
    description = models.TextField(verbose_name='Descripcion')
    drink = models.CharField(max_length=200)
    catering = models.CharField(max_length=200)
    equipment = models.CharField(max_length=200 )
    
    def __str__(self):
        return str(self.full_name)

    class Meta:
        verbose_name = 'Alquiler'
        verbose_name_plural = 'Alquileres'
        db_table = 'alquiler'
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


class StateProduct  (models.Model):
    asset = models.CharField(max_length=100, verbose_name='Activo ')
    idle = models.CharField(max_length=100, verbose_name='Inactivo ')
    amount = models.PositiveIntegerField(verbose_name= 'Cantidad')
    description = models.CharField(max_length=500,  verbose_name='Descripcion')    
    inventory = models.ForeignKey (Inventory, on_delete=models.CASCADE)


    def __str__(self):
        return self.asset

    class Meta:
        verbose_name = 'Estado de producto '
        verbose_name_plural = 'Estados de producto '
        db_table = 'estadoproducto'
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

class loyalty(models.Model):
    full_name = models.CharField(max_length=100, verbose_name='Nombres y apellidos')
    email = models.EmailField(verbose_name='Correo electrónico')
    phone = PhoneNumberField(verbose_name='Número de teléfono', region='CO')
    type_pqrsd = models.ForeignKey(TypePqrsd, on_delete=models.CASCADE)
    incident_date = models.DateField(verbose_name='Fecha de incidente')
    detailed_description = models.TextField(max_length=300, verbose_name='Descripción detallada')
    product_or_services_name = models.CharField(max_length=50, verbose_name='Nombre de producto/servicio')
    filing_number = models.PositiveIntegerField(verbose_name='Número de radicado', default=generate_random_radicado) 
    preference_contact = models.ForeignKey(PreferenceContact, on_delete=models.CASCADE)

    def __str__(self):
        return self.full_name

    def save(self, *args, **kwargs):
        if not self.filing_number:
          
            self.filing_number = random.randint(100000, 999999)
        super().save(*args, **kwargs)

    class Meta:
        verbose_name = 'Fidelizacion'
        verbose_name_plural = 'Fidelizaciones'
        db_table = 'fidelizacion'
        ordering = ['id']




class StatePqrsd (models.Model):
    wait = models.CharField(max_length=100,verbose_name= ' Espera')
    reviewed =models.CharField(max_length=100,verbose_name= ' Revisado')
    answered = models.CharField(max_length=100,verbose_name= ' Contestado')
    loyalty = models.ForeignKey (loyalty, on_delete=models.CASCADE)

    
    def __str__(self):
        return self.wait

    class Meta:
        verbose_name='Estado pqrsd'
        verbose_name_plural=' Estados pqrsd '
        db_table='estado pqrsd'
        ordering=['id']