# Generated by Django 4.0 on 2021-12-14 10:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inputs', '0003_alter_monthly_material'),
    ]

    operations = [
        migrations.AlterField(
            model_name='monthly',
            name='ETA',
            field=models.TextField(max_length=50),
        ),
        migrations.AlterField(
            model_name='monthly',
            name='ETD',
            field=models.TextField(max_length=50),
        ),
        migrations.AlterField(
            model_name='monthly',
            name='marginEUR',
            field=models.TextField(max_length=50),
        ),
        migrations.AlterField(
            model_name='monthly',
            name='podate',
            field=models.TextField(max_length=50),
        ),
        migrations.AlterField(
            model_name='monthly',
            name='sodate',
            field=models.TextField(max_length=50),
        ),
    ]
