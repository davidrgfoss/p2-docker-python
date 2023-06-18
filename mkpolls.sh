#!/bin/sh

python3 django_tutorial/manage.py makemigrations
python3 django_tutorial/manage.py migrate
python3 django_tutorial/manage.py createsuperuser --noinput
python3 django_tutorial/manage.py collectstatic --noinput
python3 django_tutorial/manage.py runserver 0.0.0.0:8006
