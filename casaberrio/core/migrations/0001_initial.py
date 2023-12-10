# Generated by Django 4.2.4 on 2023-12-10 21:13

import core.models
from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=50)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': 'Categoria alquiler',
                'verbose_name_plural': 'Categorias alquileres',
                'db_table': 'categoria_alquilar',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Cotizacion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='Nombre Completo')),
                ('email', models.EmailField(max_length=254, verbose_name='Correo Electrónico')),
                ('phone_number', models.CharField(max_length=10, verbose_name='Número de Teléfono')),
                ('event_type', models.CharField(max_length=100, verbose_name='Tipo de Evento')),
                ('event_date', models.DateField(verbose_name='Fecha del Evento')),
                ('event_duration', models.PositiveIntegerField(validators=[django.core.validators.MinValueValidator(4, message='La duración debe ser como mínimo 4 horas.'), django.core.validators.MaxValueValidator(7, message='La duración no puede ser mayor a 7 horas.')], verbose_name='Duración del Evento (horas)')),
                ('event_location', models.CharField(max_length=100, verbose_name='Sede del Evento')),
                ('salon_number', models.CharField(max_length=100, verbose_name='Número del salon')),
                ('number_of_guests', models.PositiveIntegerField(verbose_name='Cantidad de Invitados')),
                ('menu', models.CharField(max_length=20, verbose_name='Menú')),
                ('childrens_menu', models.PositiveIntegerField(max_length=20, verbose_name='Cantidad de Menús Infantiles')),
                ('additional_entries', models.CharField(default='Ninguna', max_length=20, verbose_name='Entradas Adicionales')),
                ('additional_comments', models.TextField(verbose_name='Comentarios Adicionales')),
                ('additional_services', models.CharField(max_length=200, verbose_name='Servicios Adicionales')),
                ('required_services', models.TextField(max_length=200, verbose_name='Servicios Requeridos del Paquete Base')),
                ('theme', models.CharField(default='Mariposas', max_length=200, verbose_name='Tematica')),
                ('special_need', models.CharField(default='Campo_silla_de_ruedas', max_length=200, verbose_name='Necesidad especial')),
            ],
            options={
                'verbose_name': 'cotización',
                'verbose_name_plural': 'cotizaciones',
                'db_table': 'cotizacion',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Inventory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_name', models.CharField(max_length=100, verbose_name='Nombre del producto')),
                ('product_code', models.PositiveIntegerField(verbose_name='Codigo de producto')),
                ('product_price', models.PositiveIntegerField(verbose_name='Precio de producto')),
                ('amount', models.PositiveIntegerField(verbose_name='Cantidad')),
                ('product_characteristics', models.TextField(max_length=300, verbose_name='Caracterista de producto')),
            ],
            options={
                'verbose_name': 'Inventario',
                'verbose_name_plural': 'Inventarios',
                'db_table': 'inventario',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='loyalty',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(max_length=100, verbose_name='Nombres y apellidos')),
                ('email', models.EmailField(max_length=254, verbose_name='Correo electrónico')),
                ('phone', phonenumber_field.modelfields.PhoneNumberField(max_length=128, region='CO', verbose_name='Número de teléfono')),
                ('incident_date', models.DateField(verbose_name='Fecha de incidente')),
                ('detailed_description', models.TextField(max_length=300, verbose_name='Descripción detallada')),
                ('product_or_services_name', models.CharField(choices=[('Atencion al cliente', 'Atencion al cliente'), ('bebidas ', 'bebidas'), ('banquetes', 'banquetes'), ('decoracion', 'decoracion')], default='Atencion_al _cliente', max_length=200, verbose_name='Producto o servicio')),
                ('filing_number', models.PositiveIntegerField(default=core.models.generate_random_radicado, verbose_name='Guarde el Número de radicado para consultar el estado de su PQRSD')),
            ],
            options={
                'verbose_name': 'Fidelizacion',
                'verbose_name_plural': 'Fidelizaciones',
                'db_table': 'fidelizacion',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='PreferenceContact',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('preference_contact', models.CharField(max_length=100, verbose_name='Como prefire ser contactado')),
            ],
            options={
                'verbose_name': 'Como prefire ser contactado',
                'verbose_name_plural': 'Como prefire ser contactado',
                'db_table': 'Como prefire ser contactado',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('imagen', models.ImageField(unique=True, upload_to='products/')),
                ('nombre', models.CharField(max_length=50)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.category')),
            ],
            options={
                'verbose_name': 'Producto alquiler',
                'verbose_name_plural': 'Producto alquiler',
                'db_table': 'Producto_alquiler',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='product_or_services_name',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_or_services_name', models.CharField(max_length=100, verbose_name='Nombre del producto/servicio')),
            ],
            options={
                'verbose_name': 'Nombre de producto/servicio',
                'verbose_name_plural': 'Nombre de productos/servicios',
                'db_table': 'Nombre de producto/servicio',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='SelectBank',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('select_bank', models.CharField(max_length=20, verbose_name='Seleccion de banco')),
            ],
            options={
                'verbose_name': 'Seleccion de banco',
                'verbose_name_plural': 'Seleccion de bancos',
                'db_table': 'Seleccion de banco',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TarjetaDeCD',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(max_length=100, verbose_name='Nombre Completo')),
                ('card_number', models.PositiveIntegerField(verbose_name='Numero de Tarjeta')),
                ('expiration', models.CharField(max_length=5, verbose_name='Vencimiento')),
            ],
            options={
                'verbose_name': 'Tarjeta de credito y debito',
                'verbose_name_plural': 'Tarjetas de credito y debito',
                'db_table': 'Tarjeta de credito y debito',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TypeId',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type_id', models.CharField(max_length=100, verbose_name='Tipo de identificacion')),
            ],
            options={
                'verbose_name': 'Tipo de identificacion',
                'verbose_name_plural': 'Tipo de identificaciones',
                'db_table': 'Tipo de identificacion',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TypeOFinput',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type_of_input', models.CharField(max_length=100, verbose_name='Tipo de insumo')),
            ],
            options={
                'verbose_name': 'Tipo de insumo',
                'verbose_name_plural': 'Tipo de insumos',
                'db_table': 'Tipo de insumo',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TypePerson',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type_person', models.CharField(max_length=20, verbose_name='Tipo de persona')),
            ],
            options={
                'verbose_name': 'Tipo de persona',
                'verbose_name_plural': 'Tipo de personas',
                'db_table': 'Tipo de persona',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TypePqrsd',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type_pqrsd', models.CharField(max_length=100, verbose_name='Tipo pqrsd')),
            ],
            options={
                'verbose_name': 'Tipo pqrsd',
                'verbose_name_plural': 'Tipos pqrsd',
                'db_table': 'tipo pqrsd',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TipoDeProducto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=20)),
                ('precio', models.DecimalField(decimal_places=0, max_digits=8)),
                ('cantidad', models.IntegerField(verbose_name='cantidad')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.product')),
            ],
            options={
                'verbose_name': 'Tipo de producto alquilar',
                'verbose_name_plural': 'Tipos de productos alquilar',
                'db_table': 'Tipo_de_producto_alquilar',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Supplier',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nit', models.PositiveIntegerField(verbose_name='NIT')),
                ('company_name', models.CharField(max_length=100, verbose_name='Nombre empresa')),
                ('inventory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.inventory')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
                'db_table': 'proveedor',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='StateProduct',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estadoP', models.CharField(choices=[('Activo ', 'Activo '), ('Inactivo ', 'Inactivo ')], default='Activo ', max_length=20)),
                ('inventory', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='core.inventory')),
            ],
            options={
                'verbose_name': 'Estado Producto',
                'verbose_name_plural': 'Estados productos',
                'db_table': 'estado_producto',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='StatePqrsd',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado', models.CharField(choices=[('Pendiente', 'Pendiente'), ('En proceso', 'En proceso'), ('Resuelto', 'Resuelto'), ('Cerrado', 'Cerrado')], default='Pendiente', max_length=20)),
                ('loyalty', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='core.loyalty')),
            ],
            options={
                'verbose_name': 'Estado pqrsd',
                'verbose_name_plural': 'Estados pqrsd',
                'db_table': 'estado_pqrsd',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Reserva',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado', models.CharField(choices=[('activo', 'Activo'), ('cancelado', 'Cancelado')], default='activo', max_length=20)),
                ('name', models.CharField(max_length=50, verbose_name='Nombres')),
                ('lastname', models.CharField(max_length=50, verbose_name='Apellidos')),
                ('email', models.EmailField(max_length=50, verbose_name='Correo electronico')),
                ('phone', phonenumber_field.modelfields.PhoneNumberField(max_length=128, region='CO', verbose_name='Numero de celular')),
                ('gender', models.CharField(max_length=30, verbose_name='Genero')),
                ('event_date', models.DateField(verbose_name='Fecha de evento')),
                ('event_start_time', models.TimeField(verbose_name='Hora inicial del evento')),
                ('end_time_of_the_event', models.TimeField(verbose_name='Hora final del evento')),
                ('eventType', models.CharField(max_length=200, verbose_name='Tipo de evento')),
                ('theme', models.CharField(choices=[('Campestre', 'Campestre'), ('Neon', 'Neon'), ('Alfombra_Roja', 'Alfombra Roja'), ('Personaje_Disney', 'Personaje Disney'), ('Flores', 'Flores'), ('Noche_estrellas', 'Noche de Estrellas'), ('Tropical', 'Tropical'), ('Mariposas', 'Mariposas')], default='Mariposas', max_length=200, verbose_name='Tematica')),
                ('special_need', models.CharField(choices=[('Campo_silla_de_redas', 'Campo silla de redas'), ('Comunicador_de_lenguaje_de_señas ', 'Comunicador de lenguaje de señas ')], default='Campo_silla_de_redas', max_length=200, verbose_name='Necesidad especial')),
                ('campus', models.CharField(max_length=200, verbose_name='Sede')),
                ('lounge', models.CharField(max_length=200, verbose_name='Salón')),
                ('Total_value', models.IntegerField()),
                ('cotizacion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.cotizacion')),
            ],
            options={
                'verbose_name': 'Reserva',
                'verbose_name_plural': 'Reservas',
                'db_table': 'Reserva',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='PSE',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(max_length=100, verbose_name='Nombre Completo')),
                ('identification_number', models.PositiveIntegerField(verbose_name='Numero de indentificacion')),
                ('email', models.EmailField(max_length=254, verbose_name='Correo electronico')),
                ('phone_number', phonenumber_field.modelfields.PhoneNumberField(max_length=128, region=None, verbose_name='Numero de telefono')),
                ('select_bank', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.selectbank', verbose_name='Seleccione su Banco')),
                ('type_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.typeid', verbose_name='Tipo de Identificación')),
                ('type_person', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.typeperson', verbose_name='Tipo de persona')),
            ],
            options={
                'verbose_name': 'PSE Cuenta de ahorro y corriente',
                'verbose_name_plural': 'PSE Cuentas de ahorro y corrientes',
                'db_table': 'PSE Cuenta de ahorro y corriente',
                'ordering': ['id'],
            },
        ),
        migrations.AddField(
            model_name='loyalty',
            name='preference_contact',
            field=models.ForeignKey(help_text='&nbsp', on_delete=django.db.models.deletion.CASCADE, to='core.preferencecontact', verbose_name='Como prefiere ser contactad@'),
        ),
        migrations.AddField(
            model_name='loyalty',
            name='type_pqrsd',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.typepqrsd', verbose_name='Tipo de PQRSD'),
        ),
        migrations.AddField(
            model_name='inventory',
            name='type_of_input',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.typeofinput'),
        ),
        migrations.CreateModel(
            name='DetalleCompra',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.PositiveIntegerField()),
                ('precio_unitario', models.DecimalField(decimal_places=2, max_digits=10)),
                ('subtotal', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.product')),
                ('cotizacion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='detalles_compra', to='core.cotizacion')),
            ],
        ),
        migrations.CreateModel(
            name='Carrito',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_start', models.DateTimeField(verbose_name='Fecha de inicio')),
                ('date_finish', models.DateTimeField(verbose_name='Fecha de finalizacion')),
                ('elementos_alquilar', models.TextField(max_length=1000, verbose_name='Elementos seleccionados')),
                ('precio_total', models.IntegerField(verbose_name='Precio Total')),
                ('nombre_usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Nombre de usuario')),
            ],
            options={
                'verbose_name': 'Alquiler',
                'verbose_name_plural': 'Alquileres',
                'db_table': 'Alquiler',
                'ordering': ['id'],
            },
        ),
    ]
