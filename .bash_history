cd
lsblk
history
git version--
git --version
[200~git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
docker --version
sudo apt install wget gpg
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible --version
cd UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc
mkdir ~/RTA_Examen_$(date +%Y%m%d)
mkdir ~/RTA_Examen_20250621
mkdir ~/RTA_Examen_$(date +%Y%m%d)
cd ~/RTA_Examen_20250621
nano Punto_A.sh
chmod +x Punto_A.sh
./Punto_A.sh
cd
#!/bin/bash
lsblk
#!/bin/bash
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
./Punto_A.sh
chmod +x Punto_A.sh
pwd
find ~ -name "Punto_A.sh"
cd ~/RTA_Examen_20250621
chmod +x Punto_A.sh
./Punto_A.sh
lsblk
sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdc1
sudo vgcreate vg_docker /dev/sdb1
sudo vgcreate vg_dev /dev/sdc1
sudo lvcreate -L 1G -n lv_docker vg_docker
sudo lvcreate -L 512M -n lv_workarea vg_dev
sudo lvcreate -L 512M -n lv_swap vg_dev
sudo lvremove /dev/vg_dev/lv_swap
sudo lvcreate -L 480M -n lv_swap vg_dev
sudo mkswap /dev/vg_dev/lv_swap
sudo swapon /dev/vg_dev/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /home/dev/work-area
sudo mount /dev/vg_docker/lv_docker /var/lib/docker
sudo mkfs.ext4 /dev/vg_docker/lv_docker
sudo mkfs.ext4 /dev/vg_dev/lv_workarea
sudo mount /dev/vg_docker/lv_docker /var/lib/docker
sudo mount /dev/vg_dev/lv_workarea /home/dev/work-area
mount | grep vg_
swapon --show
echo '/dev/vg_docker/lv_docker /var/lib/docker ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_dev/lv_workarea /home/dev/work-area ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_dev/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab
nano ~/RTA_Examen_20250621/Punto_A.sh
./RTA_Examen_20250621/Punto_A.sh
chmod +x ~/RTA_Examen_20250621/Punto_A.sh
./RTA_Examen_20250621/Punto_A.sh
./Punto_A.sh
ls -l Punto_A.sh
sudo nano /usr/local/bin/SantamariaAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/SantamariaAltaUser-Groups.sh
/usr/local/bin/SantamariaAltaUser-Groups.sh tp2arq ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
Lista_Usuarios.txt
cat Lista_Usuarios.txt
nano Lista_Usuarios.txt
sudo nano /usr/local/bin/SantamariaAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/SantamariaAltaUser-Groups.sh
/usr/local/bin/SantamariaAltaUser-Groups.sh tp2arq ~/RTA_Examen_20250621/Lista_Usuarios.txt
getent group | grep grupo1
id usuario1
nano ~/RTA_Examen_20250621/Punto_B.sh
chmod +x ~/RTA_Examen_20250621/Punto_B.sh
./Punto_B.sh
cat ~/RTA_Examen_20250621/Punto_A.sh
cat ~/RTA_Examen_20250621/Punto_B.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker/
nano index.html
nano Dockerfile
docker build -t federicosantamaria/web1-santamaria .
~/UTN-FRA_SO_Examenes/202406/docker$ docker build -t federicosantamaria/web1-santamaria .                
No se ha encontrado la orden «docker», pero se puede instalar con:
sudo snap install docker         # version 28.1.1+1, or
sudo snap install docker         # version 27.5.1
sudo apt  install docker.io      # version 26.1.3-0ubuntu1~24.04.1
sudo apt  install podman-docker  # version 4.9.3+ds1-1ubuntu0.2
Consulte «snap info <nombre del snap>» para ver más versiones.
tp2arq@federico-virtualbox:~/UTN-FRA_SO_Examenes/202406/docker$ 
docker --version
sudo apt-get update
sudo apt-get install
ca-certificates
sudo apt-get install      ca-certificates      curl      gnupg      lsb-release
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
curl -fsSL https://get.docker.com -o get-docker.sh
docker --version
docker build -t federicosantamaria/web1-santamaria .
sudo docker build -t federicosantamaria/web1-santamaria .
sudo docker login
sudo docker push federicosantamaria/web1-santamaria
nano run.sh
chmod +x run.sh
./run.sh
nano Punto_C.sh
chmod +x Punto_C.sh
./Punto_C.sh
--help
docker run --help
sudo docker ps
sudo docker stop <container_id>
sudo docker stop 59934918c980
sudo docker run -d -p 8081:80 federicosantamaria/web1-santamaria
sudo docker container prune
sudo lsof -i :8080
sudo docker run -d -p 8080:80 federicosantamaria/web1-santamaria
~/UTN-FRA_SO_Examenes/202406/docker$ sudo docker run -d -p 8081:80 federicosantamaria/web1-santamaria
4f867f4f650df4ad70cb9457697f9e4c9c7b446b14eda7e419d284faf8245412
tp2arq@federico-virtualbox:~/UTN-FRA_SO_Examenes/202406/docker$ sudo docker container prune
WARNING! This will remove all stopped containers.
Are you sure you want to continue? [y/N] y
Deleted Containers:
4414597db14e666ae885fe5fb288e9fa15337107ee1c49afccc09f1e057b9c16
59934918c98000dc17c13f0383ff799df8ec116c1cd71abd778e6dc54343f652
Total reclaimed space: 1.093kB
tp2arq@federico-virtualbox:~/UTN-FRA_SO_Examenes/202406/docker$ sudo lsof -i :8080
tp2arq@federico-virtualbox:~/UTN-FRA_SO_Examenes/202406/docker$ 
sudo docker ps
cat ~/UTN-FRA_SO_Examenes/202406/docker/index.html
cat ~/UTN-FRA_SO_Examenes/202406/docker/Dockerfile
cat ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
cat ~/UTN-FRA_SO_Examenes/202406/docker/Punto_C.sh
ls -l ~/UTN-FRA_SO_Examenes/202406/docker/*.sh
ansible --version
cd <Path-Repo>/202406/ansible/
cd /home/tp2arq/UTN-FRA_SO_Examenes/202406/ansible/
mkdir -p roles/segundo_parcial/{tasks,templates}
nano roles/segundo_parcial/tasks/main.yml
ansible-galaxy init segundo_parcial
tree segundo_parcial
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/segundo_parcial/tasks/main.yml
cd roles/segundo_parcial/templates/
nano datos_alumno.txt.j2
nano datos_equipo.txt.j2
nano playbook_segundo_parcial.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
nano playbook_segundo_parcial.yml
cd ~/RTA_Examen_20250621
nano ~/RTA_Examen_20250621/Punto_D.sh
chmod +x Punto_D.sh
./Punto_D.sh
nano Punto_D.sh
./Punto_D.sh
nano Punto_D.sh
chmod +x Punto_D.sh
./Punto_D.sh
ls -l /tmp/2do_parcial/
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
cat /etc/sudoers.d/2PSupervisores
ls -l /etc/sudoers.d/2PSupervisores
cd
git clone https://github.com/federicosantamaria/UTNFRA_SO_2do_TP_Santamaria.git
git clone https://github.com/FedericoSantamaria/UTNFRA_SO_2do_TP_-Santamaria-
cd UTNFRA_SO_2do_TP_-Santamaria-
git add .
git commit -m "TP completo con docker y ansible"
git config --global user.name "Federico Santamaria"
git config --global user.email "federicocab.13@gmail.com"
git commit -m "TP completo con docker y ansible"
git add .
git commit -m "TP completo con docker y ansible"
git add .
git commit -m "TP completo con docker y ansible"
git status
ls -l
cp -r /home/tp2arq/UTN-FRA_SO_Examenes/202406 ./202406
cp -r /home/tp2arq/RTA_Examen_20250621 ./RTA_Examen_20250621
cp ~/.bash_history .
ls -l
git add .
git status
git commit -m "TP2 Federico Santamaria completo con docker y ansible"
git push origin main
git push
cat ~/UTN-FRA_SO_2do_TP_-Santamaria-/RTA_Examen_20250621/Punto_C.sh
cat ~/UTNFRA_SO_2do_TP_-Santamaria-/RTA_Examen_20250621/Punto_C.sh
cd ~/UTNFRA_SO_2do_TP_-Santamaria- 
ls
ls RTA_Examen_20250621
cat RTA_Examen_20250621/Punto_C.sh
nano ~/UTNFRA_SO_2do_TP_-Santamaria-/RTA_Examen_20250621/Punto_C.sh
chmod +x ~/UTNFRA_SO_2do_TP_-Santamaria-/RTA_Examen_20250621/Punto_C.sh
cd ~/UTNFRA_SO_2do_TP_-Santamaria-
git add RTA_Examen_20250621/Punto_C.sh
git commit -m "Agregar contenido al script Punto_C.sh"
git push origin main
cd
sudo adduser federicosantamaria
cp ~/.bash_history ~/UTNFRA_SO_2do_TP_-Santamaria-/
git add .bash_history
git add .
cd ~/UTNFRA_SO_2do_TP_-Santamaria-
