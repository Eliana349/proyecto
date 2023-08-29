from django.db import models

class Low (models.Model):
    description = models.CharField(max_length=500, verbose_name='Descripcion')
    amount = models.PositiveIntegerField(verbose_name= 'Cantidad')

    def __str__(self):
        return self.description

    class Meta:
        verbose_name='Baja'
        verbose_name_plural = 'Bajas'
        db_table='bajas'
        ordering=['id']

class Inventory (models.Model):
    availability = models.CharField(max_length=100, verbose_name='Disponibilida')
    worth = models.PositiveIntegerField(verbose_name ='Valor')
    description = models.CharField(max_length=500, verbose_name='Descripcion')
    name = models.CharField(max_length=100,verbose_name= 'Nombre')
    type_inventory =models.CharField(max_length=100,verbose_name= 'Tipo de inventario')

    def __str__(self):
        return self.availability

    class Meta:
        verbose_name='Inventario'
        verbose_name_plural='Inventarios'
        db_table='inventario'
        ordering=['id']

class InventoryType(models.Model):
    real_estate =models.CharField(max_length=100,verbose_name= 'Inmobiliaria')
    equipment =models.CharField(max_length=100,verbose_name= 'Equipos')
    props =models.CharField(max_length=100,verbose_name= 'Utileria')

    def __str__(self):
        return self.real_estate

    class Meta:
        verbose_name='Tipo de Inverntario'
        verbose_name_plural='Tipos de Inventarios'
        db_table='tipo_inventario'
        ordering=['id']

class Supplier (models.Model):
    nit = models.PositiveIntegerField(verbose_name = 'NIT')
    company_name = models.CharField(max_length =100, verbose_name = 'Nombre empresa')

    def __str__ (self):
        return self.nit

    class Meta:
        verbose_name='Proveedor'
        verbose_name_plural='Proveedores'
        db_table='proveedor'
        ordering=['id']

class Rent(models.Model):
    rental_date = models.DateField(auto_now=True, verbose_name='Fecha alquiler') 
    name = models.CharField(max_length=100,verbose_name= 'Nombre')
    amount = models.PositiveIntegerField(verbose_name ='Cantidad')
    total_price = models.PositiveIntegerField(verbose_name='Precio total')

    def __str__(self):
        return self.rental_date

    class Meta:
        verbose_name='Alquier'
        verbose_name_plural='Alquileres'
        db_table='alquiler'
        ordering=['id']

class Menu(models.Model):
    name_menu = models.CharField(max_length=100, verbose_name='Nombre menu')
    description = models.CharField(max_length=500, verbose_name='Descripcion')
    price = models.PositiveIntegerField(verbose_name='Precio')

    def __str__(self):
        return self.name_menu

    class Meta:
        verbose_name='Menu'
        verbose_name_plural='Menus'
        db_table='menu'
        ordering=['id']


class Drinks(models.Model):
    drink_name = models.CharField(max_length=100, verbose_name='Nombre bebida') 
    type_drink  = models.CharField(max_length=100, verbose_name='Tipo bebida')
    worth =models.PositiveIntegerField(verbose_name ='Valor')
    
    def __str__(self):
        return self.drink_name

    class Meta:
        verbose_name='Bebida'
        verbose_name_plural='Bebidas'
        db_table='bebida'
        ordering=['id']

class Event(models.Model):
    date = models.DateField(auto_now=True, verbose_name='Fecha')
    hour = models.TimeField(verbose_name='Hora')
    event_type = models.CharField(max_length=100, verbose_name='Tipo de evento')
    theme = models.CharField(max_length=200, verbose_name='Tematica')
    description = models.CharField(max_length=500, verbose_name='Descripcion')
    number_of_invites = models.PositiveIntegerField(verbose_name='Numero de invitados')
    special_need = models.CharField(max_length=200, verbose_name='Nesecidad especial')
    guest_document = models.CharField(max_length=200, verbose_name='Documento invitado')

    def __str__(self):
        return self.date

    class Meta:
        verbose_name='Evento'
        verbose_name_plural='Eventos'
        db_table='evento'
        ordering=['id']

class Pay(models.Model) :
    subscription_number = models.PositiveIntegerField(verbose_name='Numero de abono')
    voucher = models.CharField(max_length=500, verbose_name='Comprobante')
    payment_method = models.CharField(max_length=100,verbose_name='Metodo de pago')
    full_payment = models.PositiveIntegerField(verbose_name='Pago total')

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
        db_table='tipo de evento'
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

    def __str__(self):
        return self.availability

    class Meta:
        verbose_name='Salon'
        verbose_name_plural='Salones'
        db_table='salon'
        ordering=['id']

class loyalty (models.Model):
    reward  =models.CharField(max_length=100,verbose_name= 'Recompensa')
    ovservations  =models.CharField(max_length=100,verbose_name= ' Observación ')
    type_pqrsd  =models.CharField(max_length=100,verbose_name= ' Tipo pqrsd')
    dare_pqrsd = models.DateField(verbose_name = 'Fecha')
    reward_date  = models.DateField(verbose_name = 'Fecha recompemsa ')

    def __str__(self):
        return self.reward

    class Meta:
        verbose_name='Fidelizacion'
        verbose_name_plural=' Fidelizaciones '
        db_table='fidelizacion'
        ordering=['id']

class TypePqrsd(models.Model):
    partitions = models.CharField(max_length=100,verbose_name= 'Particiones')
    complaints = models.CharField(max_length=100,verbose_name= 'Quejas')
    claims = models.CharField(max_length=100,verbose_name= 'Reclamos')
    suggestions = models.CharField(max_length=100,verbose_name= 'Sugerencias')
    denunciation = models.CharField(max_length=100,verbose_name= 'Denuncia')

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

    def __str__(self):
        return self.wait

    class Meta:
        verbose_name='Estado pqrsd'
        verbose_name_plural=' Estados pqrsd '
        db_table='estado pqrsd'
        ordering=['id']



