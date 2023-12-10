# Generated by Django 4.2.4 on 2023-12-09 23:59

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_cotizacion_special_need_cotizacion_theme'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='reserva',
            name='description',
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='additional_entries',
            field=models.CharField(default='Ninguna', max_length=20, verbose_name='Entradas Adicionales'),
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='event_duration',
            field=models.PositiveIntegerField(validators=[django.core.validators.MinValueValidator(4, message='La duración debe ser como mínimo 4 horas.'), django.core.validators.MaxValueValidator(7, message='La duración no puede ser mayor a 7 horas.')], verbose_name='Duración del Evento (horas)'),
        ),
        migrations.AlterField(
            model_name='cotizacion',
            name='special_need',
            field=models.CharField(default='Campo_silla_de_ruedas', max_length=200, verbose_name='Necesidad especial'),
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
    ]