#!/bin/bash
#
# DevBy Tao
# ==================================================

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";

# go to root
cd

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
service ssh restart


# update
sudo apt-get update
sudo apt-get dist upgrade

# install bash
sudo apt-get install bash bridge-utils eatables
sudo apt-get install iproute libev-dev python tcl8.5 tk8.5 libtk-img
sudo apt-get install bash bridge-utils ebtables iproute libev-dev python tcl8.5 tk8.5 libtk-img
sudo apt-get install xterm mgen traceroute


# install quagga
sudo apt-get install quagga


echo "clear" >> .bashrc
echo 'echo -e "Welcome to the TAO server $HOSTNAME"' >> .bashrc
echo 'echo -e "Dev By Tao 095-9965558"' >> .bashrc
echo 'echo -e "Open menu to display command list"' >> .bashrc
echo 'echo -e ""' >> .bashrc

# download core daemon
cd ~/Downloads
wget http://downloads.pf.itd.nrl.navy.mil/core/packages/4.8/core-daemon_4.8-0ubuntu1_precise_amd64.deb --no-check-certificate

# download core gui
wget http://downloads.pf.itd.nrl.navy.mil/core/packages/4.8/core-gui_4.8-0ubuntu1_precise_all.deb --no-check-certificate



# install core
cd ~/Downloads
sudo dpkg -i core-daemon_4.8-0ubuntu1_precise_amd64.deb
sudo dpkg -i core-gui_4.8-0ubuntu1_precise_all.deb

#install
sudo apt-get -f install
sudo apt-get install libtk.img

# install start
sudo /etc/init.d/core-daemon start

#start corenetwork
core-gui

# info
clear
echo "Dev By TAO 095-9965558

Fb.com/T4O.iT"  | tee -a log-install.txt
echo "Auto Setup By TAO"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "Log of installer --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "==========================================="  | tee -a log-install.txt
cd

