# Generated by Django 4.2.4 on 2023-11-16 22:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cotizacion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='Nombre Completo')),
                ('email', models.EmailField(max_length=254, verbose_name='Correo Electrónico')),
                ('phone_number', models.CharField(max_length=10, verbose_name='Número de Teléfono')),
                ('event_type', models.CharField(max_length=100, verbose_name='Tipo de Evento')),
                ('event_date', models.DateField(verbose_name='Fecha del Evento')),
                ('event_duration', models.PositiveIntegerField(verbose_name='Duración del Evento (en horas)')),
                ('event_location', models.CharField(max_length=100, verbose_name='Sede del Evento')),
                ('number_of_guests', models.PositiveIntegerField(verbose_name='Cantidad de Invitados')),
                ('required_services', models.CharField(max_length=200, verbose_name='Servicios Requeridos')),
                ('additional_comments', models.TextField(verbose_name='Comentarios Adicionales')),
            ],
            options={
                'verbose_name': 'cotización',
                'verbose_name_plural': 'cotizaciones',
                'db_table': 'cotizacion',
                'ordering': ['id'],
            },
        ),
    ]
