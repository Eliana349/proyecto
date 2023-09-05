from django.db import models

class Property(models.Model):
    chairs = models.PositiveIntegerField( verbose_name='Sillas')
    table = models.PositiveIntegerField(verbose_name='Mesas')
    chairs_and_tables = models.PositiveIntegerField(verbose_name='Sillas y mesas')
    tents = models.PositiveIntegerField(verbose_name='Carpas')
    none = models.PositiveIntegerField(verbose_name='Ninguno')

    def __str__(self):
        return self.chairs

    class Meta:
        verbose_name = 'Inmueble'
        verbose_name_plural = 'Inmuebles'
        db_table = 'inmueble'
        ordering = ['id']

class Drink(models.Model):
    schnapps = models.PositiveIntegerField(verbose_name='Aguardiente')
    rum = models.PositiveIntegerField(verbose_name='Ron')
    whiskey = models.PositiveIntegerField(verbose_name='Whisky')
    cocktails = models.PositiveIntegerField(verbose_name='Cócteles')
    soda = models.PositiveIntegerField(verbose_name='Gaseosa')

    def __str__(self):
        return self.schnapps

    class Meta:
        verbose_name = 'Bebida'
        verbose_name_plural = 'Bebidas'
        db_table = 'bebida'
        ordering = ['id']

class Catering(models.Model):
    household = models.PositiveIntegerField(verbose_name='Menaje')
    table_linen = models.PositiveIntegerField(verbose_name='Manteleria')
    waiters = models.PositiveIntegerField(verbose_name='Meseros')
    menu = models.TextField(verbose_name='Menu')
    drink = models.ForeignKey(Drink, on_delete=models.CASCADE)

    def __str__(self):
        return self.household

    class Meta:
        verbose_name = 'Catering'
        verbose_name_plural = 'Catering'
        db_table = 'catering'
        ordering = ['id']

class Equipment(models.Model):
    lightning = models.PositiveIntegerField(verbose_name='Iluminación')
    sound = models.PositiveIntegerField(verbose_name='Sonido')

    def __str__(self):
        return self.lightning

    class Meta:
        verbose_name = 'Equipo'
        verbose_name_plural = 'Equipos'
        db_table = 'equipos'
        ordering = ['id']

class Rent(models.Model):
    rental_date_and_time = models.DateTimeField(verbose_name='Fecha y hora de alquiler')
    return_date_and_time = models.DateTimeField(verbose_name='Fecha y hora de devolución')
    description = models.CharField(max_length=500, verbose_name='Descripcion')
    unit_price = models.PositiveIntegerField(verbose_name='Precio Unitario')
    total_price = models.PositiveIntegerField(verbose_name='Precio total')
    property = models.ForeignKey(Property, on_delete=models.CASCADE)
    drink = models.ForeignKey(Drink, on_delete=models.CASCADE)
    catering = models.ForeignKey(Catering, on_delete=models.CASCADE)
    equipment = models.ForeignKey(Equipment, on_delete=models.CASCADE)

    def __str__(self):
        return self.rental_date_and_time

    class Meta:
        verbose_name = 'Alquiler'
        verbose_name_plural = 'Alquileres'
        db_table = 'alquiler'
        ordering = ['id']


class ProductType(models.Model):
    equipment = models.OneToOneField(Equipment, on_delete=models.CASCADE)
    property = models.OneToOneField(Property, on_delete=models.CASCADE)
    drink = models.OneToOneField(Drink, on_delete=models.CASCADE)
    catering = models.OneToOneField(Catering, on_delete=models.CASCADE)

    def __str__(self):
        return 'Tipo de Producto'

    class Meta:
        verbose_name = 'Tipo Producto'
        verbose_name_plural = 'Tipos de Productos'
        db_table = 'productotipo'
        ordering = ['id']

class Inventory (models.Model):
    availability = models.CharField(max_length=100, verbose_name='Disponibilidad')
    worth = models.PositiveIntegerField(verbose_name ='Valor')
    description = models.CharField( max_length=500, verbose_name='Descripcion')
    name = models.CharField(max_length=100,verbose_name= 'Nombre')
    productType = models.ForeignKey (ProductType, on_delete=models.CASCADE)

    def __str__(self):
        return self.availability

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

class TypePay(models.Model):
    nequi = models.CharField(max_length=100,)
    daviplata= models.CharField (max_length=100,)
    bamcolombia = models.CharField(max_length=100,)
    efectivo = models.CharField(max_length=100,)
    tarjeta = models.CharField(max_length=100,)

    def __str__(self):
        return self.nequi

    class Meta:
        verbose_name = 'Tipo de pago  '
        verbose_name_plural = 'Tipos de pago '
        db_table = 'tipopago'
        ordering = ['id']

class Pay(models.Model) :
    subscription_number = models.PositiveIntegerField(verbose_name='Numero de abono')
    voucher = models.CharField(max_length=500, verbose_name='Comprobante')
    payment_method = models.CharField(max_length=100,verbose_name='Metodo de pago')
    full_payment = models.PositiveIntegerField(verbose_name='Pago total')
    rent = models.ForeignKey (Rent, on_delete=models.CASCADE)

    def __str__(self):
        return self.subscription_number


    class Meta:
        verbose_name='Pago'
        verbose_name_plural='Pagos'
        db_table='pago'
        ordering=['id']
 
class EventType (models.Model):
    wedding = models.CharField(max_length=100, verbose_name='Boda')
    birthday = models.CharField(max_length=100, verbose_name='Cumpleaños')
    anniversary = models.CharField(max_length=100, verbose_name='Aniversario')
    baby_shower = models.CharField(max_length=100, verbose_name='Baby shower')
    conferences = models.CharField(max_length=100, verbose_name='Conferencias')
    theme_parties = models.CharField(max_length=100, verbose_name='Fisestas tematicas')
    
    def __str__(self):
        return self.wedding

    class Meta:
        verbose_name='Tipo evento'
        verbose_name_plural='Tipos de evento'
        db_table='tipoevento'
        ordering=['id']

class Campus (models.Model):
    headquarters_name = models.CharField(max_length=100,verbose_name='Nombre sede')
    address = models.CharField(max_length=100,verbose_name='Dirección')
    
    

    def __str__(self):
        return self.headquarters_name

    class Meta:
        verbose_name='Sede'
        verbose_name_plural='Sedes'
        db_table='sede'
        ordering=['id']

class Lounge (models.Model):
    availability  = models.CharField(max_length=100, verbose_name='Disponibilidad')
    capacity = models.PositiveIntegerField(verbose_name='Capacidad aforo')
    campus = models.ForeignKey (Campus, on_delete=models.CASCADE)

    def __str__(self):
        return self.availability

    class Meta:
        verbose_name='Salon'
        verbose_name_plural='Salones'
        db_table='salon'
        ordering=['id']

class Event(models.Model):
    date = models.DateField( verbose_name='Fecha')
    hour = models.TimeField(verbose_name='Hora')
    event_type = models.CharField(max_length=100, verbose_name='Tipo de evento')
    theme = models.CharField(max_length=200, verbose_name='Tematica')
    description = models.CharField(max_length=500,  verbose_name='Descripcion')
    number_of_invites = models.PositiveIntegerField(verbose_name='Numero de invitados')
    special_need = models.CharField(max_length=200, verbose_name='Nesecidad especial')
    guest_document = models.CharField(max_length=200, verbose_name='Documento invitado')
    pay = models.ForeignKey (Pay, on_delete=models.CASCADE)
    eventType = models.ForeignKey (EventType, on_delete=models.CASCADE)
    campus = models.ForeignKey (Campus, on_delete=models.CASCADE)
    lounge = models.ForeignKey (Lounge, on_delete=models.CASCADE)

    def __str__(self):
        return self.date

    class Meta:
        verbose_name='Evento'
        verbose_name_plural='Eventos'
        db_table='evento'
        ordering=['id']

class loyalty (models.Model):
    reward  =models.CharField(max_length=100,verbose_name= 'Recompensa')
    ovservations  =models.CharField(max_length=100,verbose_name= ' Observación ')
    type_pqrsd  =models.CharField(max_length=100,verbose_name= ' Tipo pqrsd')
    dare_pqrsd = models.DateField(null= True, verbose_name = 'Fecha')
    reward_date  = models.DateField(null=True, verbose_name = 'Fecha recompemsa ')
    event = models.ForeignKey (Event, on_delete=models.CASCADE)

    def __str__(self):
        return self.reward

    class Meta:
        verbose_name='Fidelizacion'
        verbose_name_plural=' Fidelizaciones '
        db_table='fidelizacion'
        ordering=['id']

class TypePqrsd(models.Model):
    partitions = models.CharField(max_length=100,verbose_name= 'Peticiones')
    complaints = models.CharField(max_length=100,verbose_name= 'Quejas')
    claims = models.CharField(max_length=100,verbose_name= 'Reclamos')
    suggestions = models.CharField(max_length=100,verbose_name= 'Sugerencias')
    denunciation = models.CharField(max_length=100,verbose_name= 'Denuncia')
    loyalty = models.ForeignKey (loyalty, on_delete=models.CASCADE)

    def __str__(self):
        return self.partitions

    class Meta:
        verbose_name='Tipo pqrsd'
        verbose_name_plural='Tipos pqrsd'
        db_table='tipo pqrsd'
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