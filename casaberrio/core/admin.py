from django.contrib import admin
from .models import *
from django import forms



admin.site.register(Inventory)
admin.site.register(Supplier)
admin.site.register(Rent)
admin.site.register(StateProduct)
admin.site.register(PreferenceContact)
admin.site.register(TypePqrsd)
admin.site.register(loyalty,)
admin.site.register(StatePqrsd)
admin.site.register(Reserva)
admin.site.register(TypeOFinput)

admin.site.register(PSE)
admin.site.register(TypePerson)
admin.site.register(SelectBank)
admin.site.register(TypeId)





class TarjetaDeCDAdminForm(forms.ModelForm):
    class Meta:
        model = TarjetaDeCD
        fields = ['full_name', 'card_number']
        widgets = {
            'expiration': forms.TextInput(attrs={'disabled': 'disabled'}),
            'card_number': forms.TextInput(attrs={'disabled': 'disabled'}),
            'full_name': forms.TextInput(attrs={'disabled': 'disabled'}),
        }


class TarjetaDeCDAdmin(admin.ModelAdmin):
    form = TarjetaDeCDAdminForm

admin.site.register(TarjetaDeCD, TarjetaDeCDAdmin)
