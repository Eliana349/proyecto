from typing import Any
from django import forms
from django.contrib.auth.models import User 
from phonenumber_field.formfields import PhoneNumberField
from core.models import Reserva,PSE,TarjetaDeCD,loyalty,Inventory,Carrito,Product

class RegisterForm(forms.Form):
    Names = forms.CharField(required=True, label='Nombres',
                                max_length=50, min_length=2)
    surnames = forms.CharField(required=True, label='Apellidos',
                                    max_length=50, min_length=2)
    username = forms.CharField(required=True, label='Nombre de usuario',
                                 max_length=50,
                                widget=forms.TextInput(attrs={
                                    'class':'form-control'
                                }))
    email = forms.EmailField(required=True, label='Correo electronico',
                                 widget=forms.EmailInput(attrs={
                                    'class': 'form-control',
                                    'id': 'email',
                                    'placeholder': 'Ejemplo@gmail.com'
                                 }))
    phone =PhoneNumberField(required=True, label='Numero de celular',
                                widget=forms.TextInput, region="CO")
    password = forms.CharField(required=True, max_length=10,label=' contraseña',
                               widget=forms.PasswordInput(attrs={
                                'class': 'form-control'
                               }))


    confirm_password = forms.CharField (required=True, max_length=10, label='Confirmar contraseña',
                                 widget=forms.PasswordInput (attrs={
                                    'class': 'form-control'
                                 }))

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

        if cleaned_data.get('confirm_password') != cleaned_data.get('password'):
            self.add_error('confirm_password', 'Las contraseñas no coinciden')


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
    
    name = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombres '}),label='')
    lastname = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Apellidos'}), label='')
    email = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Correo electronico'}), label='')
    phone = PhoneNumberField(label='',widget=forms.TextInput(attrs={'placeholder':'Telefono ','type': 'tel'})   )
    gender = forms.ChoiceField(choices=GENERO_CHOICES,label='')
    event_date = forms.DateField(
        widget=forms.DateInput(attrs={'type': 'date', 'placeholder': 'Fecha de evento'}),
        label='Fecha',
        input_formats=['%Y-%m-%d'], 
)  
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
    def cleand(self):
        cleaned_data = super().clean()
        start_time = cleaned_data.get('event_start_time')
        end_time = cleaned_data.get('end_time_of_the_event')
        if start_time >= end_time:
            self.add_error('event_start_time', 'La hora de inicio debe ser anterior a la hora final del evento')

    class Meta:
        model = Reserva  
        fields = ['name','lastname','email', 'phone', 'gender','event_date','event_start_time','end_time_of_the_event','theme','special_need','eventType','campus','lounge','description']
        

        
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
    class Meta:
        model = loyalty
        fields = ['full_name','email','phone','type_pqrsd','incident_date','detailed_description','product_or_services_name','filing_number','preference_contact']
        widgets = {
            'email': forms.TextInput(attrs={'placeholder': 'Ejemplo@gmail.com'}),
            


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
    ('R'), ('Resvisado'),
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
    class Meta:
        model = Carrito
        fields = ['nombre_usuario','elementos_alquilar','precio_total']
        
        def save(opciones_actualizadas):
            return formularioCarrito({'elementos_alquilar': opciones_actualizadas})
        

class formularioTipo(forms.Form):
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
    Tipo = forms.ChoiceField(choices=TEMATICA_CHOICES)
    cantidad = forms.IntegerField()
    class Meta:
        model = Product
        fields = ['Tipo','cantidad']