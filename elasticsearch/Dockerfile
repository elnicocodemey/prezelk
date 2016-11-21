FROM openjdk:8

MAINTAINER ndemey@norsys.fr

RUN apt-get update && apt-get upgrade -y

RUN apt-get install curl -y

RUN useradd -ms /bin/bash elasticsearch

RUN echo "0.0.0.0 localhost" >> /etc/hosts

#RUN sysctl -w vm.max_map_count=262144

USER elasticsearch

WORKDIR /home/elasticsearch

RUN  cd /home/elasticsearch && curl -L  -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.0.1.zip && unzip elasticsearch-5.0.1.zip && mv elasticsearch-5.0.1 elasticsearch

CMD ["/home/elasticsearch/elasticsearch/bin/elasticsearch", "-Enetwork.host=0.0.0.0", "-Ediscovery.zen.minimum_master_nodes=1"]

EXPOSE 9200
EXPOSE 9300

