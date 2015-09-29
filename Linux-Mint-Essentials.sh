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
add-apt-repository -y ppa:libreoffice/ppa -y
add-apt-repository -y ppa:ubuntu-wine/ppa -y
add-apt-repository -y ppa:atareao/atareao -y
add-apt-repository -y ppa:webupd8team/java -y
add-apt-repository -y ppa:webupd8team/tor-browser -y
dd-apt-repository -y ppa:webupd8team/sublime-text-2 -y
add-apt-repository -y ppa:numix/ppa -y
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
apt-get -q -y install wine1.7
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
apt-get -q -y purge libreoffice*
apt-get -q -y install libreoffice
apt-get -q -y install bleachbit
apt-get -q -y install filezilla 
apt-get -q -y install my-weather-indicator
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
wget http://mirrors.kernel.org/ubuntu/pool/main/n/ndg-httpsclient/python-ndg-httpsclient_0.3.2-1ubuntu4_all.deb
wget http://codingteam.net/project/googleplaydownloader/download/file/googleplaydownloader_1.7-1_all.deb
dpkg -i --force-all google-chrome-stable_current_amd64.deb
dpkg -i --force-all viber.deb
dpkg -i --force-all python-ndg-httpsclient_0.3.2-1ubuntu4_all.deb
dpkg -i --force-all googleplaydownloader_1.7-1_all.deb
rm -rf google-chrome-stable_current_amd64.deb
rm -rf viber.deb
rm -rf python-ndg-httpsclient_0.3.2-1ubuntu4_all.deb
rm -rf googleplaydownloader_1.7-1_all.deb
mkdir Popcorn-Time
mkdir Nestopia-ROMS
chmod 777 Nestopia-ROMS/ -R
chmod 777 Popcorn-Time/ -R
cd Nestopia-ROMS/
wget https://dl.dropboxusercontent.com/u/25024443/supermario.nes
cd ../Popcorn-Time/
wget https://get.popcorntime.io/build/Popcorn-Time-0.3.8-5-Linux-64.tar.xz
chmod 777 Popcorn-Time-0.3.8-5-Linux-64.tar.xz -R
tar xf Popcorn-Time-0.3.8-5-Linux-64.tar.xz
rm -rf Popcorn-Time-0.3.8-5-Linux-64.tar.xz
cd ..
chmod 777 Popcorn-Time/ -R
chmod 777 Nestopia-ROMS/ -R
echo ""
echo ""
#Download and install the Linux Kernel 4.1.8
#===============================================================================
echo "*******************************"
echo "Install Latest Linux Kernel v4.1.8"
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
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.9-unstable/linux-headers-4.1.9-040109-generic_4.1.9-040109.201509291430_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.9-unstable/linux-headers-4.1.9-040109_4.1.9-040109.201509291430_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.9-unstable/linux-image-4.1.9-040109-generic_4.1.9-040109.201509291430_amd64.deb
dpkg -i linux-headers-4.1.9-*.deb linux-image-4.1.9-*.deb
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
echo " "
echo " "
reboot
