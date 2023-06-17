FROM python:3
WORKDIR /usr/src/app
MAINTAINER davidrgfoss "davidrg@davidrgfoss.com"
RUN pip install django mysqlclient && git clone https://github.com/davidrgfoss/p2-docker-python.git /usr/src/app && mkdir static && chmod + /usr/src/app/django_polls.sh
ENV ALLOWED_HOSTS=*
ENV HOST=mariadb
ENV USUARIO=django
ENV CONTRA=django
ENV BASE_DATOS=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
CMD ["/usr/src/app/django_polls.sh"]
