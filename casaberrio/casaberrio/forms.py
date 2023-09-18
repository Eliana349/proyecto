from typing import Any
from django import forms
from django.contrib.auth.models import User 
from core.models import Reserva,PSE,TarjetaDeCD,loyalty,Inventory,Rent

class RegisterForm(forms.Form):
    Names = forms.CharField(required=True)
    surnames = forms.CharField(required=True)
    username = forms.CharField(required=True)
    email = forms.EmailField(required=True)
    phone = forms.IntegerField(required=True)
    password = forms.CharField(required=True, max_length=10,
                               widget=forms.PasswordInput)
    confirm_password = forms.CharField (required=True, max_length=10,
                                 widget=forms.PasswordInput)

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
        


class formularioReserva(forms.ModelForm):
    class Meta:
        model = Reserva  
        fields = ['name', 'lastname', 'email', 'phone', 'gender', 'event_date', 'event_start_time','theme','description','special_need','guest_document','type_pay','eventType','campus','lounge']
        
class formularioPSE(forms.ModelForm):
    class Meta:
        model = PSE
        fields = ['type_person','select_bank','full_name','type_id','identification_number','email','phone_number']
        
class formularioTarjetaDeCD(forms.ModelForm):
    class Meta:
        model = TarjetaDeCD
        fields = ['full_name','card_number','expiration','cw']     
          
class formularioFedelizacion(forms.ModelForm):
    class Meta:
        model = loyalty
        fields = ['full_name','email','phone','type_pqrsd','incident_date','detailed_description','product_or_services_name','invoice_or_transacion_number','preference_contact']
       
class formularioInventario(forms.ModelForm):
    class Meta:
        model = Inventory
        fields = ['type_of_input','product_name','product_code','product_price','amount','product_characteristics']

class formularioAlquiler(forms.ModelForm):
    class Meta:
        model = Rent
        fields = ['full_name','phone','rental_date_and_time','return_date_and_time_f','description','drink','catering','equipment']