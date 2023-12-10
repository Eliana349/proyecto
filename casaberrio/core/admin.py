from django.contrib import admin
from .models import *
from django import forms



admin.site.register(Inventory)
admin.site.register(Supplier)
admin.site.register(Carrito)
admin.site.register(StateProduct)
admin.site.register(PreferenceContact)
admin.site.register(TypePqrsd)
admin.site.register(loyalty,)
admin.site.register(StatePqrsd)
admin.site.register(Reserva)
admin.site.register(TypeOFinput)
admin.site.register(TypePerson)
admin.site.register(SelectBank)
admin.site.register(TypeId)
admin.site.register(Product)
admin.site.register(TipoDeProducto)
admin.site.register(Category)
admin.site.register(Cotizacion)





class PSEAdminForm(forms.ModelForm):
    class Meta:
        model = PSE
        fields = ['type_person','select_bank','full_name','type_id','identification_number','email','phone_number']
        widgets = {
            'type_person':forms.Select( attrs = {'disabled':'disabled'}),
            'select_bank':forms.Select( attrs = {'disabled':'disabled'}),
            'full_name':forms.TextInput( attrs = {'disabled':'disabled'}),
            'type_id':forms.Select( attrs = {'disabled':'disabled'}),
            'identification_number':forms.TextInput( attrs = {'disabled':'disabled'}),
            'email':forms.TextInput( attrs = {'disabled':'disabled'}),
            'phone_number' :forms.TextInput( attrs = {'disabled':'disabled'}),

        }
    
    
        class Meta:
            full_name = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombres Completos'}),label='Nombres Completos')

class PSEAdmin (admin.ModelAdmin):
    form = PSEAdminForm 

admin.site.register(PSE,PSEAdmin )
