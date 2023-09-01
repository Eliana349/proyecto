from django.contrib import admin
from .models import Inventory,InventoryType,Supplier,Low,Rent,Pay,Event,EventType,Menu,Drinks,Campus,Lounge,loyalty,TypePqrsd,StatePqrsd

admin.site.register(Inventory)
admin.site.register(InventoryType)
admin.site.register(Supplier)
admin.site.register(Low)
admin.site.register(Rent)
admin.site.register(Pay)
admin.site.register(Event)
admin.site.register(EventType)
admin.site.register(Menu)
admin.site.register(Drinks)
admin.site.register(Campus)
admin.site.register(Lounge)
admin.site.register(loyalty)
admin.site.register(TypePqrsd)
admin.site.register(StatePqrsd)

# Register your models here.
