#!/bin/sh

wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
chmod +x wait-for-it.sh

# Espera hasta que MariaDB esté lista para aceptar conexiones.
./wait-for-it.sh $HOST:3306 --timeout=30 --strict -- echo "MariaDB ok"

python3 django_tutorial/manage.py makemigrations
python3 django_tutorial/manage.py migrate
python3 django_tutorial/manage.py createsuperuser --noinput
python3 django_tutorial/manage.py collectstatic --noinput
python3 django_tutorial/manage.py runserver 0.0.0.0:8006
