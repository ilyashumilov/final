# Generated by Django 3.2.8 on 2022-02-02 09:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inputs', '0007_alter_so_comment'),
    ]

    operations = [
        migrations.AlterField(
            model_name='so',
            name='comment',
            field=models.TextField(max_length=1000),
        ),
    ]
