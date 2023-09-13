from django import forms

from django.contrib.auth.models import User 

class RegisterForm(forms.Form):
    Names = forms.CharField(required=True)
    surnames = forms.CharField(required=True)
    username = forms.CharField(required=True)
    email = forms.EmailField(required=True)
    phone = forms.IntegerField(required=True)
    password = forms.CharField(required=True, max_length=10)

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
