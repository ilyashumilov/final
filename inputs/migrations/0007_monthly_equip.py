# Generated by Django 4.0 on 2021-12-14 23:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inputs', '0006_shipment_equip'),
    ]

    operations = [
        migrations.AddField(
            model_name='monthly',
            name='equip',
            field=models.CharField(default=1, max_length=30),
            preserve_default=False,
        ),
    ]
