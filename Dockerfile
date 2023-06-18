FROM python:3
WORKDIR /usr/src/app
MAINTAINER davidrgfoss "davidrg@davidrgfoss.com"
RUN apt-get install git && pip install django mysqlclient
RUN git clone https://github.com/davidrgfoss/p2-docker-python.git /usr/src/app && mkdir static
COPY ./mkpolls.sh /usr/src/app/
RUN chmod +x /usr/src/app/mkpolls.sh
ENTRYPOINT ["/usr/src/app/mkpolls.sh"]
