# Generated by Django 4.0 on 2021-12-14 09:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inputs', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='monthly',
            name='shipinstr',
            field=models.TextField(default=0, max_length=50),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='shipment',
            name='shipinstr',
            field=models.TextField(default=0, max_length=50),
            preserve_default=False,
        ),
    ]