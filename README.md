# prezelk
présentation du trio elasticSearch/kibana/logstash


Pour pouvoir faire tourner correctement elasticsearch vous allez devoir modifier via sysctl la mémoire allouée à votre container

==> sudo sysctl vm.max_map_count=262144
