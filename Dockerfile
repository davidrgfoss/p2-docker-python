FROM python:3
WORKDIR /usr/src/app
MAINTAINER davidrgfoss "davidrg@davidrgfoss.com"
RUN apt-get install git && pip install --root-user-action=ignore --upgrade pip && pip install --root-user-action=ignore django mysqlclient
RUN git clone https://github.com/davidrgfoss/p2-docker-python.git /usr/src/app && mkdir static
ADD ./mkpolls.sh /usr/src/app/
RUN chmod +x /usr/src/app/mkpolls.sh
ENV ALLOWED_HOSTS='*'
ENV HOST=mariadb
ENV USUARIO=django
ENV CONTRA=django
ENV BASE_DATOS=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
ENTRYPOINT ["/usr/src/app/mkpolls.sh"]
