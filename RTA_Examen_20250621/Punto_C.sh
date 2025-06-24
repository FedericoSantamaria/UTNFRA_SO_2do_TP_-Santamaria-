#!/bin/bash
sudo docker build -t federicosantamaria/web1-santamaria .
sudo docker push federicosantamaria/web1-santamaria
./run.sh
