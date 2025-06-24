#!/bin/bash

sudo docker build -t federicosantamaria/web1-santamaria .

sudo docker login

sudo docker push federicosantamaria/web1-santamaria

./run.sh

echo "la imagen esta creada, subida y corriendo"
