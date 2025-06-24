#!/bin/bash
(
echo n
echo p
echo 1
echo
echo
echo t
echo 8e
echo w
) | sudo fdisk /dev/sdb

(
echo n
echo p
echo 1
echo
echo
echo t
echo 8e
echo w
) | sudo fdisk /dev/sdc

sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdc1

sudo vgcreate vg_docker /dev/sdb1
sudo vgcreate vg_dev /dev/sdc1

sudo lvcreate -L 1G -n lv_docker vg_docker
sudo lvcreate -L 512M -n lv_workarea vg_dev
sudo lvcreate -L 480M -n lv_swap vg_dev

sudo mkfs.ext4 /dev/vg_docker/lv_docker
sudo mkfs.ext4 /dev/vg_dev/lv_workarea
sudo mkswap /dev/vg_dev/lv_swap

sudo mkdir -p /var/lib/docker
sudo mkdir -p /home/dev/work-area

sudo mount /dev/vg_docker/lv_docker /var/lib/docker
sudo mount /dev/vg_dev/lv_workarea /home/dev/work-area
sudo swapon /dev/vg_dev/lv_swap

echo '/dev/vg_docker/lv_docker /var/lib/docker ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_dev/lv_workarea /home/dev/work-area ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_dev/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab
echo "Punto A del TP2"

