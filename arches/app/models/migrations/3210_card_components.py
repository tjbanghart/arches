# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-05-09 14:45
from __future__ import unicode_literals

import django.contrib.postgres.fields.jsonb
from django.db import migrations, models
import django.db.models.deletion
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('models', '3201_remove_node_and_nodetype_branches'),
    ]

    operations = [
        migrations.CreateModel(
            name='CardComponent',
            fields=[
                ('componentid', models.UUIDField(default=uuid.uuid1, primary_key=True, serialize=False)),
                ('name', models.TextField(blank=True, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('component', models.TextField()),
                ('componentname', models.TextField()),
                ('defaultconfig', django.contrib.postgres.fields.jsonb.JSONField(blank=True, db_column='defaultconfig', null=True)),
            ],
            options={
                'db_table': 'card_components',
                'managed': True,
            },
        ),
        migrations.RunSQL("""
            INSERT INTO card_components(componentid, name, description, component, componentname, defaultconfig)
                VALUES ('f05e4d3a-53c1-11e8-b0ea-784f435179ea', 'Default Card', 'Default Arches card UI', 'views/components/cards/default', 'default-card', '{}');
        """,
        """
            DELETE FROM card_components WHERE componentid = 'f05e4d3a-53c1-11e8-b0ea-784f435179ea';
        """),
        migrations.AddField(
            model_name='cardmodel',
            name='config',
            field=django.contrib.postgres.fields.jsonb.JSONField(blank=True, db_column='config', null=True),
        ),
        migrations.AddField(
            model_name='cardmodel',
            name='component',
            field=models.ForeignKey(db_column='componentid', default=uuid.UUID('f05e4d3a-53c1-11e8-b0ea-784f435179ea'), on_delete=django.db.models.deletion.CASCADE, to='models.CardComponent'),
        ),
    ]
