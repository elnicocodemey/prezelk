FROM ubuntu:latest

MAINTAINER ndemey@norsys.fr

RUN apt-get update && apt-get upgrade -y

RUN apt-get install curl -y

RUN apt-get install apache2 -y

RUN curl -O https://artifacts.elastic.co/downloads/kibana/kibana-5.0.1-linux-x86_64.tar.gz

RUN tar -xvf kibana-5.0.1-linux-x86_64.tar.gz

RUN mv kibana-5.0.1-linux-x86_64 /var/www/kibana

ADD config/kibana.yml /var/www/kibana/config/

CMD ["/var/www/kibana/bin/kibana"]

EXPOSE 80
EXPOSE 5601
