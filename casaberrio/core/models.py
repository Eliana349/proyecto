from django.db import models


class Lounge (models.Model):
    lounge  = models.CharField(max_length=100, verbose_name='Numero de salon')

    def __str__(self):
        return self.lounge

    class Meta:
        verbose_name='Salon'
        verbose_name_plural='Salones'
        db_table='salon'
        ordering=['id']
        
class EventType (models.Model):
    event_type = models.CharField(max_length=100, verbose_name='Tipo de evento')
   
    def __str__(self):
        return self.event_type

    class Meta:
        verbose_name='Tipo evento'
        verbose_name_plural='Tipos de evento'
        db_table='tipoevento'
        ordering=['id']

class TypePay(models.Model):
    type_pay = models.CharField(max_length=100, verbose_name='Tipo de pago')
    
    def __str__(self):
        return self.type_pay

    class Meta:
        verbose_name = 'Tipo de pago  '
        verbose_name_plural = 'Tipos de pago '
        db_table = 'tipopago'
        ordering = ['id']

class Campus (models.Model):
    campus = models.CharField(max_length=100,verbose_name='Nombre sede')
    
    

    def __str__(self):
        return self.campus

    class Meta:
        verbose_name='Sede'
        verbose_name_plural='Sedes'
        db_table='sede'
        ordering=['id']


class Gender(models.Model):
    genero = models.CharField(max_length=15, verbose_name='Genero')
    
    def __str__(self):
        return self.genero
    
    
    class Meta:
        verbose_name = 'Genero'
        verbose_name_plural = 'Generos'
        db_table = 'Genero'
        ordering = ['id']

class Reserva(models.Model):
    name = models.CharField(max_length=50, verbose_name='Nombres')
    lastname = models.CharField(max_length=50, verbose_name='Apellidos')
    email = models.EmailField(max_length=50, verbose_name='Correo electronico')
    phone = models.PositiveIntegerField(verbose_name='Numero de celular')
    gender = models.ForeignKey(Gender,verbose_name='Genero', on_delete=models.CASCADE)
    event_date = models.DateTimeField( verbose_name='Fecha de evento')
    event_start_time = models.TimeField(verbose_name='Hora inicial del evento')
    theme = models.CharField(max_length=200, verbose_name='Tematica')
    description = models.CharField(max_length=500,  verbose_name='Descripcion')
    special_need = models.CharField(max_length=200, verbose_name='Necesidad especial (Personas discapacitadas)')
    guest_document = models.CharField(max_length=200, verbose_name='Documento invitado')
    type_pay = models.ForeignKey(TypePay, on_delete=models.CASCADE)
    eventType = models.ForeignKey (EventType, on_delete=models.CASCADE)
    campus = models.ForeignKey (Campus, on_delete=models.CASCADE)
    lounge = models.ForeignKey (Lounge, on_delete=models.CASCADE)
    
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
    phone_number = models.PositiveIntegerField(verbose_name='Numero de telefono')
    
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
    cw = models.PositiveBigIntegerField(verbose_name='CW')
    
    def __str__(self):
        return self.full_name

    class Meta:
        verbose_name = 'Tarjeta de credito y debito'
        verbose_name_plural = 'Tarjetas de credito y debito'
        db_table = 'Tarjeta de credito y debito'
        ordering = ['id']
        
    
class Drink(models.Model):
    schnapps = models.CharField(max_length=100,verbose_name='Aguardiente')

    def __str__(self):
        return self.schnapps

    class Meta:
        verbose_name = 'Bebida'
        verbose_name_plural = 'Bebidas'
        db_table = 'bebida'
        ordering = ['id']

class Catering(models.Model):
    household = models.CharField(max_length=100,verbose_name='Menaje')

    def __str__(self):
        return self.household

    class Meta:
        verbose_name = 'Catering'
        verbose_name_plural = 'Catering'
        db_table = 'catering'
        ordering = ['id']

class Equipment(models.Model):
    lightning = models.CharField(max_length=100, verbose_name='iluminacion y sonido')
    def __str__(self):
        return self.lightning

    class Meta:
        verbose_name = 'Equipo'
        verbose_name_plural = 'Equipos'
        db_table = 'equipos'
        ordering = ['id']

class Rent(models.Model):
    full_name = models.CharField(max_length=100, verbose_name='Nombres Completos')
    phone = models.PositiveIntegerField(verbose_name='Numero Celular')
    rental_date_and_time = models.DateTimeField(verbose_name='Fecha y hora de incio')
    return_date_and_time_f =models.DateTimeField(verbose_name='Fecha y hora de finalizacion')
    description = models.TextField(verbose_name='Descripcion')
    drink = models.ManyToManyField('drink')
    catering = models.ManyToManyField('Catering')
    equipment = models.ManyToManyField('Equipment')
    
    def __str__(self):
        return str(self.full_name)

    class Meta:
        verbose_name = 'Alquiler'
        verbose_name_plural = 'Alquileres'
        db_table = 'alquiler'
        ordering = ['id']


class ProductType(models.Model):
    equipment = models.OneToOneField(Equipment, on_delete=models.CASCADE)
    drink = models.OneToOneField(Drink, on_delete=models.CASCADE)
    catering = models.OneToOneField(Catering, on_delete=models.CASCADE)

    def __str__(self):
        return 'Tipo de Producto'

    class Meta:
        verbose_name = 'Tipo Producto'
        verbose_name_plural = 'Tipos de Productos'
        db_table = 'productotipo'
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
        return self.nit

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
        

class loyalty (models.Model):
    full_name =models.CharField(max_length=100,verbose_name= 'Nombres y apellidos')
    email  =models.EmailField(verbose_name= ' Correo electronico ')
    phone  =models.PositiveIntegerField(verbose_name= 'Numero de telefono')
    type_pqrsd =models.ForeignKey(TypePqrsd, on_delete=models.CASCADE)
    incident_date = models.DateField(verbose_name='Fecha de incidente')
    detailed_description = models.TextField(max_length=300,verbose_name = 'Descripcion detallada')
    product_or_services_name  = models.CharField(max_length=50, verbose_name = 'Nombre de producto/servicio')
    invoice_or_transacion_number = models.PositiveIntegerField(verbose_name='Nombre de factura o transaccion')
    preference_contact = models.ForeignKey(PreferenceContact, on_delete=models.CASCADE)

    def __str__(self):
        return self.full_name

    class Meta:
        verbose_name='Fidelizacion'
        verbose_name_plural=' Fidelizaciones '
        db_table='fidelizacion'
        ordering=['id']



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