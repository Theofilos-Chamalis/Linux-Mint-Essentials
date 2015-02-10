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
echo "Starting script now"
echo "..."
echo ".."
echo "."
echo ""
echo ""
cd /home/
#Add ppas
#===============================================================================
echo "*******************************"
echo "Adding PPAs"
echo "..."
echo ".."
echo "."
echo ""
echo ""
add-apt-repository ppa:danielrichter2007/grub-customizer
add-apt-repository -y ppa:teejee2008/ppa
add-apt-repository -y ppa:libreoffice/ppa
add-apt-repository -y ppa:ubuntu-wine/ppa
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:webupd8team/tor-browser
dd-apt-repository -y ppa:webupd8team/sublime-text-2
add-apt-repository ppa:numix/ppa
sh -c 'echo "deb http://repository.spotify.com/ stable non-free" > /etc/apt/sources.list.d/spotify.list'
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
echo ""
echo ""
#Update sources
#===============================================================================
echo "*******************************"
echo "Updating sources"
echo "..."
echo ".."
echo "."
echo ""
echo ""
apt-get update
echo ""
echo ""
#Starting installations
#===============================================================================
echo "*******************************"
echo "Starting installations"
echo "..."
echo ".."
echo "."
echo ""
echo ""
apt-get install grub-customizer
apt-get install conky-manager curl
apt-get install wine1.7
apt-get install oracle-java8-installer oracle-java8-set-default
apt-get install tor-browser
apt-get install sublime-text
apt-get install skype
apt-get install numix-icon-theme-circle
apt-get install numix-icon-themebevel
apt-get install numix-tools
apt-get install numix-icon-theme
apt-get install numix-gtk-theme
apt-get install spotify-client
apt-get install nestopia
apt-get install teamviewer
apt-get purge libreoffice*
apt-get install libreoffice 
echo ""
echo ""
#Download software directly from internet
#===============================================================================
echo "*******************************"
echo "Download and install software "
echo "directly from internet"
echo "..."
echo ".."
echo "."
echo ""
echo ""
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
dpkg -i google-chrome-stable_current_amd64.deb
dpkg -i viber.deb
rm -rf google-chrome-stable_current_amd64.deb
rm -rf viber.deb
mkdir Popcorn-Time
mkdir Nestopia-ROMS
chmod 777 Nestopia-ROMS/ -R
chmod 777 Popcorn-Time/ -R
cd Nestopia-ROMS/
wget https://dl.dropboxusercontent.com/u/25024443/supermario.nes
cd ../Popcorn-Time/
wget https://dl.dropboxusercontent.com/u/25024443/pop/Popcorn-Time
wget https://dl.dropboxusercontent.com/u/25024443/pop/package.nw
wget https://dl.dropboxusercontent.com/u/25024443/pop/nw.pak
wget https://dl.dropboxusercontent.com/u/25024443/pop/libffmpegsumo.so
echo ""
echo ""
#Download and install the Linux Kernel 3.19
#===============================================================================
echo "*******************************"
echo "Install Linux Kernel 3.19 "
echo "..."
echo ".."
echo "."
echo ""
echo ""
cd /tmp/
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.19-vivid/linux-headers-3.19.0-031900-generic_3.19.0-031900.201502091451_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.19-vivid/linux-headers-3.19.0-031900_3.19.0-031900.201502091451_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.19-vivid/linux-image-3.19.0-031900-generic_3.19.0-031900.201502091451_amd64.deb
dpkg -i linux-headers-3.19.0-*.deb linux-image-3.19.0-*.deb
echo ""
echo ""
#Upgrade existing Linux Mint software
#===============================================================================
echo "*******************************"
echo "Upgrade existing Linux Mint"
echo "software and programs"
echo "..."
echo ".."
echo "."
echo ""
echo ""
apt-get upgrade
apt-get dist-upgrade
apt-get autoclean
apt-get autoremove
echo ""
echo ""
echo "                   The script has finished yay!!! ... finally :p "
echo "*******************************************************************************"
echo "==============================================================================="
echo ""
echo ""
echo "*****************"
echo "Bye!!!"
echo "*****************"
echo " "
echo " "
echo " "
echo "Rebooting shortly..."
echo "Rebooting shortly.."
echo "Rebooting shortly."
echo ""
echo ""
reboot




































