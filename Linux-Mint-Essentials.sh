#!/bin/bash

clear
echo " "
echo "                              LINUX-MINT-ESSENTIALS               "
echo " "
echo " "
echo "The Linux-Mint-Essentials script was created by Theofilos Chamalis for free"
echo "use by anyone!!"
echo "Enjoy!!"
echo " "
echo " "
echo "*****************"
echo "Hello $USER!!!"
echo "*****************"
echo " "
echo " "
echo " "
echo "==============================================================================="
echo "*******************************************************************************"
echo ""
echo "You must be logged in as root (type su before running the script) to begin"
sleep 5
echo "Starting script now"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
cd /home/
#Add ppas
#===============================================================================
echo "*******************************"
echo "Adding PPAs"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
add-apt-repository -y ppa:danielrichter2007/grub-customizer -y
add-apt-repository -y ppa:teejee2008/ppa -y
add-apt-repository -y ppa:ubuntu-wine/ppa -y
add-apt-repository -y ppa:webupd8team/java -y
add-apt-repository -y ppa:webupd8team/tor-browser -y
add-apt-repository -y ppa:webupd8team/sublime-text-2 -y
add-apt-repository -y ppa:numix/ppa -y
add-apt-repository -y ppa:cairo-dock-team/ppa
sh -c 'echo "deb http://repository.spotify.com/ stable non-free" > /etc/apt/sources.list.d/spotify.list'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886 -y
echo ""
echo ""
#Update sources
#===============================================================================
echo "*******************************"
echo "Updating sources"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
apt-get -q -y -m update
echo ""
echo ""
#Starting installations
#===============================================================================
echo "*******************************"
echo "Starting installations"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
apt-get -q -y install grub-customizer
apt-get -q -y install wine1.8
apt-get -q -y install oracle-java8-installer oracle-java8-set-default
apt-get -q -y install tor-browser
apt-get -q -y install sublime-text
apt-get -q -y install skype
apt-get -q -y install numix-icon-theme-circle
apt-get -q -y install numix-icon-themebevel
apt-get -q -y install numix-tools
apt-get -q -y install numix-icon-theme
apt-get -q -y install numix-gtk-theme
apt-get -q -y install spotify-client
apt-get -q -y install nestopia
apt-get -q -y install teamviewer
apt-get -q -y install bleachbit
apt-get -q -y install filezilla 
apt-get -q -y install libreoffice-style-breeze
apt-get -q -y install cairo-dock cairo-dock-plug-ins
echo ""
echo ""
#Download software directly from internet
#===============================================================================
echo "*******************************"
echo "Download and install software "
echo "directly from internet"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
wget http://mirrors.kernel.org/ubuntu/pool/main/n/ndg-httpsclient/python-ndg-httpsclient_0.4.0-3_all.deb
wget http://codingteam.net/project/googleplaydownloader/download/file/googleplaydownloader_1.8-1.deb
dpkg -i --force-all google-chrome-stable_current_amd64.deb
dpkg -i --force-all viber.deb
dpkg -i --force-all python-ndg-httpsclient_0.4.0-3_all.deb
dpkg -i --force-all googleplaydownloader_1.8-1.deb
rm -rf google-chrome-stable_current_amd64.deb
rm -rf viber.deb
rm -rf python-ndg-httpsclient_0.4.0-3_all.deb
rm -rf googleplaydownloader_1.8-1.deb
mkdir Nestopia-ROMS
chmod 777 Nestopia-ROMS/ -R
cd Nestopia-ROMS/
wget https://dl.dropboxusercontent.com/u/25024443/supermario.nes
cd ..
chmod 777 Nestopia-ROMS/ -R
echo ""
echo ""
#Download and install the Linux Kernel 4.1.20 LTS
#===============================================================================
echo "*******************************"
echo "Install Latest LTS (Long Term Support) Linux Kernel v4.1.20 willy"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
cd /tmp/
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.20-wily/linux-headers-4.1.20-040120-generic_4.1.20-040120.201603171731_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.20-wily/linux-headers-4.1.20-040120_4.1.20-040120.201603171731_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.20-wily/linux-image-4.1.20-040120-generic_4.1.20-040120.201603171731_amd64.deb
dpkg -i linux-headers-4.1.20-*.deb linux-image-4.1.20-*.deb
echo ""
echo ""
#Upgrade existing Linux Mint software
#===============================================================================
echo "*******************************"
echo "Upgrade existing Linux Mint"
echo "software and programs"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
apt-get -q -y -m -f dist-upgrade
apt-get -q -y -m autoclean
apt-get -q -y -m -f autoremove
echo ""
echo ""
echo "                   The script has finished yay!!! ... finally :p "
echo "*******************************************************************************"
echo "==============================================================================="
sleep 5
echo ""
echo ""
echo "Rebooting now"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
echo "*****************"
echo "Bye!!!"
echo "*****************"
echo ""
echo ""
reboot
