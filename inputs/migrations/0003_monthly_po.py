# Generated by Django 3.2.7 on 2022-01-12 17:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inputs', '0002_auto_20220111_1456'),
    ]

    operations = [
        migrations.AddField(
            model_name='monthly',
            name='po',
            field=models.TextField(default=1, max_length=300),
            preserve_default=False,
        ),
    ]
