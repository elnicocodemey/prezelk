#!/bin/bash

for image in $(sudo docker ps -a | cut -d\  -f1)
do
sudo docker kill $image
done
