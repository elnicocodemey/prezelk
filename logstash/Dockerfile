FROM openjdk:8-jre

MAINTAINER ndemey@norsys.fr

RUN apt-get update -y && apt-get upgrade -y && apt-get install vim -y

ADD config/log-generator.jar .

ADD config/GeoLiteCity.dat.gz .

ADD logstash-5.0.1.tar.gz .

ADD config/1-stupidPipeline.conf /logstash-5.0.1/config/

ADD config/2-grokPipeline.conf /logstash-5.0.1/config/

ADD config/3-finalPipeline.conf /logstash-5.0.1/config/

#RUN tar -xvf logstash-5.0.1.tar.gz

RUN mv logstash-5.0.1 logstash

RUN mkdir logstash/patterns

ADD config/logback /logstash/patterns/

ENV PATH /logstash/bin:$PATH

RUN java -jar log-generator.jar -n 100 -r 1000 -t 2  >> /var/log/logGenerator.log &

#COPY docker-entrypoint.sh /

#ENTRYPOINT ["/docker-entrypoint.sh"]

#CMD ["-e", ""]
