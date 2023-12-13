# Generated by Django 4.2.4 on 2023-12-12 23:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='PQRS',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(choices=[('P', 'Petición'), ('Q', 'Queja'), ('R', 'Reclamo'), ('S', 'Sugerencia')], max_length=1)),
                ('descripcion', models.TextField()),
                ('respuesta', models.TextField(blank=True, null=True)),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
                ('fidelizacion', models.BooleanField(default=False)),
            ],
        ),
    ]
