# Generated by Django 4.2.4 on 2023-08-30 17:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Campus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('headquarters_name', models.CharField(max_length=100, verbose_name='Nombre sede')),
                ('address', models.CharField(max_length=100, verbose_name='Dirección')),
            ],
            options={
                'verbose_name': 'Sede',
                'verbose_name_plural': 'Sedes',
                'db_table': 'sede',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField(verbose_name='Fecha')),
                ('hour', models.TimeField(verbose_name='Hora')),
                ('event_type', models.CharField(max_length=100, verbose_name='Tipo de evento')),
                ('theme', models.CharField(max_length=200, verbose_name='Tematica')),
                ('description', models.CharField(max_length=500, verbose_name='Descripcion')),
                ('number_of_invites', models.PositiveIntegerField(verbose_name='Numero de invitados')),
                ('special_need', models.CharField(max_length=200, verbose_name='Nesecidad especial')),
                ('guest_document', models.CharField(max_length=200, verbose_name='Documento invitado')),
            ],
            options={
                'verbose_name': 'Evento',
                'verbose_name_plural': 'Eventos',
                'db_table': 'evento',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Inventory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('availability', models.CharField(max_length=100, verbose_name='Disponibilida')),
                ('worth', models.PositiveIntegerField(verbose_name='Valor')),
                ('description', models.CharField(max_length=500, verbose_name='Descripcion')),
                ('name', models.CharField(max_length=100, verbose_name='Nombre')),
                ('type_inventory', models.CharField(max_length=100, verbose_name='Tipo de inventario')),
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
                ('reward', models.CharField(max_length=100, verbose_name='Recompensa')),
                ('ovservations', models.CharField(max_length=100, verbose_name=' Observación ')),
                ('type_pqrsd', models.CharField(max_length=100, verbose_name=' Tipo pqrsd')),
                ('dare_pqrsd', models.DateField(null=True, verbose_name='Fecha')),
                ('reward_date', models.DateField(null=True, verbose_name='Fecha recompemsa ')),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.event')),
            ],
            options={
                'verbose_name': 'Fidelizacion',
                'verbose_name_plural': ' Fidelizaciones ',
                'db_table': 'fidelizacion',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='TypePqrsd',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('partitions', models.CharField(max_length=100, verbose_name='Peticiones')),
                ('complaints', models.CharField(max_length=100, verbose_name='Quejas')),
                ('claims', models.CharField(max_length=100, verbose_name='Reclamos')),
                ('suggestions', models.CharField(max_length=100, verbose_name='Sugerencias')),
                ('denunciation', models.CharField(max_length=100, verbose_name='Denuncia')),
                ('loyalty', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.loyalty')),
            ],
            options={
                'verbose_name': 'Tipo pqrsd',
                'verbose_name_plural': 'Tipos pqrsd',
                'db_table': 'tipo pqrsd',
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
            name='StatePqrsd',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('wait', models.CharField(max_length=100, verbose_name=' Espera')),
                ('reviewed', models.CharField(max_length=100, verbose_name=' Revisado')),
                ('answered', models.CharField(max_length=100, verbose_name=' Contestado')),
                ('loyalty', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.loyalty')),
            ],
            options={
                'verbose_name': 'Estado pqrsd',
                'verbose_name_plural': ' Estados pqrsd ',
                'db_table': 'estado pqrsd',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Rent',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rental_date', models.DateField(verbose_name='Fecha alquiler')),
                ('name', models.CharField(max_length=100, verbose_name='Nombre')),
                ('amount', models.PositiveIntegerField(verbose_name='Cantidad')),
                ('total_price', models.PositiveIntegerField(verbose_name='Precio total')),
                ('inventory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.inventory')),
            ],
            options={
                'verbose_name': 'Alquier',
                'verbose_name_plural': 'Alquileres',
                'db_table': 'alquiler',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Pay',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('subscription_number', models.PositiveIntegerField(verbose_name='Numero de abono')),
                ('voucher', models.CharField(max_length=500, verbose_name='Comprobante')),
                ('payment_method', models.CharField(max_length=100, verbose_name='Metodo de pago')),
                ('full_payment', models.PositiveIntegerField(verbose_name='Pago total')),
                ('rent', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.rent')),
            ],
            options={
                'verbose_name': 'Pago',
                'verbose_name_plural': 'Pagos',
                'db_table': 'pago',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_menu', models.CharField(max_length=100, verbose_name='Nombre menu')),
                ('description', models.CharField(max_length=500, verbose_name='Descripcion')),
                ('price', models.PositiveIntegerField(verbose_name='Precio')),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.event')),
            ],
            options={
                'verbose_name': 'Menu',
                'verbose_name_plural': 'Menus',
                'db_table': 'menu',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Low',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.CharField(max_length=500, verbose_name='Descripcion')),
                ('amount', models.PositiveIntegerField(verbose_name='Cantidad')),
                ('inventory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.inventory')),
            ],
            options={
                'verbose_name': 'Baja',
                'verbose_name_plural': 'Bajas',
                'db_table': 'bajas',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Lounge',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('availability', models.CharField(max_length=100, verbose_name='Disponibilidad')),
                ('capacity', models.PositiveIntegerField(verbose_name='Capacidad aforo')),
                ('campus', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.campus')),
            ],
            options={
                'verbose_name': 'Salon',
                'verbose_name_plural': 'Salones',
                'db_table': 'salon',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='InventoryType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('real_estate', models.CharField(max_length=100, verbose_name='Inmobiliaria')),
                ('equipment', models.CharField(max_length=100, verbose_name='Equipos')),
                ('props', models.CharField(max_length=100, verbose_name='Utileria')),
                ('inventory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.inventory')),
            ],
            options={
                'verbose_name': 'Tipo de Inverntario',
                'verbose_name_plural': 'Tipos de Inventarios',
                'db_table': 'tipo_inventario',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='EventType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('wedding', models.CharField(max_length=100, verbose_name='Boda')),
                ('birthday', models.CharField(max_length=100, verbose_name='Cumpleaños')),
                ('anniversary', models.CharField(max_length=100, verbose_name='Aniversario')),
                ('baby_shower', models.CharField(max_length=100, verbose_name='Baby shower')),
                ('conferences', models.CharField(max_length=100, verbose_name='Conferencias')),
                ('theme_parties', models.CharField(max_length=100, verbose_name='Fisestas tematicas')),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.event')),
            ],
            options={
                'verbose_name': 'Tipo evento',
                'verbose_name_plural': 'Tipos de evento',
                'db_table': 'tipo de evento',
                'ordering': ['id'],
            },
        ),
        migrations.AddField(
            model_name='event',
            name='pay',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.pay'),
        ),
        migrations.CreateModel(
            name='Drinks',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('drink_name', models.CharField(max_length=100, verbose_name='Nombre bebida')),
                ('type_drink', models.CharField(max_length=100, verbose_name='Tipo bebida')),
                ('worth', models.PositiveIntegerField(verbose_name='Valor')),
                ('menu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.menu')),
            ],
            options={
                'verbose_name': 'Bebida',
                'verbose_name_plural': 'Bebidas',
                'db_table': 'bebida',
                'ordering': ['id'],
            },
        ),
        migrations.AddField(
            model_name='campus',
            name='event',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.event'),
        ),
    ]
