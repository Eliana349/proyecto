from typing import Any
from django import forms
from django.contrib.auth.models import User 
from phonenumber_field.formfields import PhoneNumberField
from core.models import Reserva,PSE,TarjetaDeCD,loyalty,Inventory,Carrito,Product, Cotizacion
import re
from django.utils import timezone
from django.core.exceptions import ValidationError 

    
    

class RegisterForm(forms.Form):
    Names = forms.CharField(
        required=True,
        label='Nombres',
        max_length=50,
        min_length=4
    )
    surnames = forms.CharField(
        required=True,
        label='Apellidos',
        max_length=50,
        min_length=2
    )
    username = forms.CharField(
        required=True,
        label='Nombre de usuario',
        max_length=50,
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        required=True,
        label='Correo electrónico',
        widget=forms.EmailInput(attrs={
            'class': 'form-control',
            'id': 'email',
            'placeholder': 'Ejemplo@gmail.com'
        })
    )
    phone =PhoneNumberField(
        required=True, 
        label='Numero de celular', 
        widget=forms.TextInput, region="CO")
    
    password = forms.CharField(
        required=True,
        max_length=10,
        label='Contraseña',
        widget=forms.PasswordInput(attrs={'class': 'form-control'})
    )
    confirm_password = forms.CharField(
        required=True,
        max_length=10,
        label='Confirmar contraseña',
        widget=forms.PasswordInput(attrs={'class': 'form-control'})
    )

    def clean_username(self):
        username = self.cleaned_data.get('username')

        if User.objects.filter(username=username).exists():
            raise forms.ValidationError('El username ya se encuentra en uso')

        return username      

    def clean_email(self):
        email = self.cleaned_data.get('email')

        if User.objects.filter(email=email).exists():
            raise forms.ValidationError('El email ya se encuentra en uso')

        return email

    def clean(self):
        cleaned_data = super().clean()

        password = cleaned_data.get('password')
        confirm_password = cleaned_data.get('confirm_password')

        if confirm_password != password:
            self.add_error('confirm_password', 'Las contraseñas no coinciden')

        # Validaciones para una contraseña segura
        if len(password) < 8:
            raise ValidationError('La contraseña debe tener al menos 8 caracteres.')

        if not any(char.isdigit() for char in password):
            raise ValidationError('La contraseña debe contener al menos un número.')


        return cleaned_data

GENERO_CHOICES = (
    ('M', 'Masculino'),
    ('F', 'Femenino'),
    ('O', 'Otro'),
)



TIPO_EVENTO = (
    ('M', 'Matrimonios'),
    ('F', 'Quince años'),
    ('O', 'Grados'),
    ('O', 'Despedidas empresariales'),
    ('O', 'Cumpleaños'),
)


CAMPUS = (
    ('M', 'Santa Isabel'),
    ('F', 'Comuneros'),
    ('O', 'Teusaquillo'),
)

PROD_SER_CHOICES = (
    ('Atencion al cliente', 'Atencion al cliente'),
    ('bebidas ', 'bebidas'),
    ('banquetes','banquetes'),
    ('decoracion','decoracion'),
    
)



SALON = (
    ('M', 'Salon 1'),
    ('F', 'Salon 2'),
    ('O', 'Salon 3'),
)

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

class formularioReserva(forms.ModelForm):
    
    name = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombres'}),label='', max_length=50,min_length=3)
    lastname = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Apellidos'}), label='',max_length=50,min_length=3)
    email = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Correo electronico'}), label='')
    phone = PhoneNumberField(label='',widget=forms.TextInput(attrs={'placeholder':'Telefono ','type': 'tel'})   )
    gender = forms.ChoiceField(choices=GENERO_CHOICES,label='')


   
    event_date = forms.DateField(
        widget=forms.DateInput(attrs={'type': 'date', 'placeholder': 'Fecha de evento'}),
        label='Fecha',
        input_formats=['%Y-%m-%d']
    )
    def __init__(self, *args, **kwargs):
        reservas_anteriores = kwargs.pop('reservas_anteriores', None)
        super().__init__(*args, **kwargs)

        today = timezone.now().date()


        self.fields['event_date'].widget.attrs['min'] = today.strftime('%Y-%m-%d')
    def clean(self):
        cleaned_data = super().clean()
        event_date = cleaned_data.get('event_date')

        reservas_exist = Reserva.objects.filter(event_date=event_date).exists()

        if reservas_exist:
            raise ValidationError('Ya existe una reserva para esta fecha. Por favor, elige otra fecha.')

       

    event_start_time = forms.TimeField(
        widget=forms.TimeInput(attrs={'type': 'time'}),
        label='Hora de inicio '
       
    )

    end_time_of_the_event = forms.TimeField(
        widget=forms.TimeInput(attrs={'type': 'time'}),
        label='Hora final '
    )

    theme = forms.ChoiceField(choices=TEMATICA_CHOICES ,label='Tematica')
    description = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'Descripcion','rows': 5, 'cols': 100}), label='')
    special_need = forms.ChoiceField(choices=NECECIDAD_CHOICES ,label='Necesidad especial ')
    eventType = forms.ChoiceField(choices=TIPO_EVENTO,label='Tipo de evento')
    campus = forms.ChoiceField(choices=CAMPUS,label='Lugar del evento')
    lounge = forms.ChoiceField(choices=SALON,label='Numero de salon')
    

    
    class Meta:
        model = Reserva  
        fields = ['name','lastname','email', 'phone', 'gender','event_date','event_start_time','end_time_of_the_event','theme','special_need','eventType','campus','lounge','description']
    def clean(self):
        cleaned_data = super().clean()
        event_start_time = cleaned_data.get('event_start_time')
        end_time_of_the_event = cleaned_data.get('end_time_of_the_event')

        if event_start_time and end_time_of_the_event:
            # Convertir horas a minutos para facilitar la comparación
            start_minutes = event_start_time.hour * 60 + event_start_time.minute
            end_minutes = end_time_of_the_event.hour * 60 + end_time_of_the_event.minute

            # Verificar si la hora final es después de la medianoche y ajustar
            if end_time_of_the_event.hour < event_start_time.hour:
                end_minutes += 24 * 60  # Agregar 24 horas si la hora final es antes de la hora de inicio

            # Permitir una brecha máxima de 7 horas entre la hora de inicio y la hora final
            if end_minutes - start_minutes > 7 * 60:
                raise ValidationError('La brecha entre la hora de inicio y la hora final no puede ser mayor a 7 horas')
   
        
class formularioPSE(forms.ModelForm):
    class Meta:
        model = PSE
        fields = ['type_person','select_bank','full_name','type_id','identification_number','email','phone_number']
        class Meta:
            full_name = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombres Completos'}),label='Nombres Completos')
            




        
class formularioTarjetaDeCD(forms.ModelForm):
    expiration = forms.CharField(widget=forms.DateInput(attrs={'placeholder': '25/10'}),label='Vencimiento')
    class Meta:
        model = TarjetaDeCD
        fields = ['full_name','card_number','expiration']     



          
class formularioFedelizacion(forms.ModelForm):
    incident_date = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}),label='Fecha de incidente')
    phone = PhoneNumberField(
        label='Teléfono',
        widget=forms.TextInput(attrs={'type': 'tel'}) 
    )
    product_or_services_name = forms.ChoiceField(choices=PROD_SER_CHOICES ,label='Producto o servicio ')

    class Meta:
        model = loyalty
        fields = ['full_name','email','phone','type_pqrsd','incident_date','detailed_description','product_or_services_name','filing_number','preference_contact']
        widgets = {
            'email': forms.TextInput(attrs={'placeholder': 'Ejemplo@gmail.com'}),
            'detailed_description': forms.TextInput(attrs={'placeholder': 'Descripción de lo sucedido'})


            }


       


class formularioInventario(forms.ModelForm):
    class Meta:
        model = Inventory
        fields = ['type_of_input','product_name','product_code','product_price','amount','product_characteristics']
        

DRINK = (
    ('Gaseosa Postobon y Coca cola', 'Gaseosa Postobon y Coca cola'),
    ('Whiskey', 'Whiskey'),
    ('Ron', 'Ron'),
    ('Agua', 'Agua'),
    ('Cocteles', 'Cocteles'),
)


STATEPQRSD = (
    ('P'), ('Pendiente'),
    ('R'), ('Revisado'),
    ('C'), ('Contestado'),
)

CATERING = (
    ('Sillas', 'Sillas'),
    ('Mesas', 'Mesas'),
    ('Manteles', 'Manteles'),
    ('Copas', 'Copas'),
    ('Vasos', 'Vasos'),
    ('amaPlatosrillo', 'Platos'),
    ('Mesa Redonda (ponque)', 'Mesa Redonda (ponque)'),
)


EQUIPAMENT = (
    ('Luces', 'Luces'),
    ('Sonido', 'Sonido'),
    ('Camara de humo', 'Camara de humo'),
    ('Lanza confetti', 'Lanza confetti'),
)

class formularioCarrito(forms.ModelForm):
    elementos_alquilar = forms.CharField(widget=forms.Textarea(attrs={'readonly': 'readonly'}))
    date_start = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    date_finish = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    class Meta:
        model = Carrito
        fields = ['nombre_usuario','date_start','date_finish','elementos_alquilar','precio_total']
        
        def save(opciones_actualizadas):
            return formularioCarrito({'elementos_alquilar': opciones_actualizadas})
        

class formularioTipo(forms.ModelForm):
    Tipo = forms.ChoiceField()
    cantidad = forms.IntegerField()
    class Meta:
        model = Product
        fields = ['Tipo'] 

class CotizacionForm(forms.ModelForm):
    

    TIPOS_DE_EVENTO_CHOICES = (
        ('evento1', 'Matrimonio'),
        ('evento2', '15 años'),
        ('evento3', 'Bautizos'),
        ('evento4', 'Grados'),
        ('evento5', 'Cumpleaños'),
        ('evento6', 'Despedidas Empresariales'),
    )
    
    event_type = forms.ChoiceField(
        choices=TIPOS_DE_EVENTO_CHOICES,
        label="Tipo de Evento"
    )
    
    event_date = forms.DateField(
        widget=forms.DateInput(attrs={'type': 'date'}),
        label="Fecha del Evento"
    )

    def clean_fecha(self):
        fecha = self.cleaned_data.get('fecha')

        if fecha < timezone.now().date():
            raise ValidationError('La fecha no puede ser anterior al día actual.')
        
        return fecha
    
    SEDES_CHOICES = (
        ('sede1', 'Santa Isabel'),
        ('sede2', 'Teusaquillo'),
        ('sede3', 'Comuneros'),
    )

    event_location = forms.ChoiceField(
        choices=SEDES_CHOICES,
        label="Sede del Evento"
    )
    
    SALON_CHOICES ={
        ('salon1', 'Salón 1'),
        ('salon2', 'Salón 2'),
        ('salon3', 'Salón 3'),
    }

    salon_number = forms.ChoiceField(
        choices=SALON_CHOICES,
        label="Número de Salon"
    )
    

    required_services = forms.MultipleChoiceField(
        choices=[
            ('servicio1', 'Buffet'),
            ('servicio2', 'Pastel'),
            ('servicio3', 'Sonido Dj - Animación'),
            ('servicio4', 'Sillas'),
            ('servicio5', 'Centros de Mesa'),
            ('servicio6', 'Fotografía Digital'),
            ('servicio7', 'Mezcladores, hielos y gaseosas'),
            ('servicio8', 'Coctel'),
            ('servicio9', 'Servicio de meseros por 7 horas'),
            ('servicio10', 'Champañas'),
        ],
        widget=forms.CheckboxSelectMultiple,
        label="Servicios Requeridos del Paquete Base"
    )

    MENU_CHOICES = (
        ('menu1', 'Menú #1'),
        ('menu2', 'Menú #2'),
        ('menu3', 'Menú #3'),
        ('menu4', 'Menú #4'),
        ('menu5', 'Menú #5'),
        ('menu6', 'Menú #6'),
    )

    menu= forms.ChoiceField(
        choices=MENU_CHOICES,
        label="Menu"
    )

    ADDITIONAL_ENTRIES_CHOICES={
        ('entrada1', 'Vol au vent de atún o pollo'),
        ('entrada2', 'Melón con fresas a la miel'),
        ('entrada3', 'Macedoniod de fruta variada'),
        ('entrada4', 'Canapés de atún o pollo'),
        ('entrada5', 'Ninguna'),
    }

    additional_entries=forms.ChoiceField(
        choices=ADDITIONAL_ENTRIES_CHOICES,
        label="Entradas Adicionales"
    )

    additional_services= forms.MultipleChoiceField(
        choices=[
            ('servicio1', 'Decoración Escalera en Flores Naturales'),
            ('servicio2', 'Kit Hora de Carnaval con Accesorios'),
            ('servicio3', 'Fiesta Temática'),
            ('servicio4', 'Otros - Filmación'),
            ('servicio5', 'Foto Registro Enmarcado 40x50 cms'),
            ('servicio6', 'Libro de Firmas'),
            ('servicio7', 'Videos Retrospectivos'),
            ('servicio8', 'Video Beam - Telón'),
            ('servicio9', 'Whisky'),
        ],
        widget=forms.CheckboxSelectMultiple,
        label="Servicios Adicionales"
    )

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

    theme = forms.ChoiceField(
        choices=TEMATICA_CHOICES,
        label='Tematica'
    )

    NECESIDAD_CHOICES = (
    ('Campo_silla_de_redas', 'Campo silla de ruedas'),
    ('Comunicador_de_lenguaje_de_señas ', 'Comunicador de lenguaje de señas '),

    )

    special_need = forms.ChoiceField(
        choices=NECESIDAD_CHOICES,
        label='Necesidad especial ')

    class Meta:
        model = Cotizacion
        fields = '__all__'