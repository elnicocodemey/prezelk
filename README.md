# prezelk
présentation du trio elasticSearch/kibana/logstash


## 1a- Pour pouvoir faire tourner correctement elasticsearch vous allez devoir modifier via sysctl la mémoire allouée à votre container

==> sudo sysctl vm.max_map_count=262144

## 1b- Lancer logstash via deocker 

cd logstash && sudo docker built -t prezelk:logstash .

sudo docker run -it prezelk:logstash /bin/bash

## 2(Pas de suite vile chenapan)- build docker images

sudo docker-compose build

## 3- run elk's containers

sudo docker-compose up

## 4- locate logstash container process and run commands on it

sudo docker ps 

sudo docker exec -it <PID_LOGSTASH> /bin/bash

## 5- Launch your apps to log on a file

//You are now on logstash container

java -jar /log-generator.jar -n 2 

## 6- Launch logstash 

/logstash/bin/logstash -f /logstash/config/1-stupidPipeline.conf




## NEVERMIND- launch your logging app

java -jar /log-generator.jar -n 3 -r 1000 -t 2 >> /var/log/app.log

