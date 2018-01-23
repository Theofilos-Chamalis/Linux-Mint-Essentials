#!/bin/bash

clear
echo " "
echo "                              LINUX-MINT-ESSENTIALS               "
echo " "
echo " "
echo "*****************"
echo "Hello $USER!!!"
echo "*****************"
echo " "
echo " "
echo " "
echo "Linux-Mint-Essentials is a free script created by Theofilos Chamalis."
echo "Its purpose is to install quickly in a script programs and packages"
echo "that are considered necessary for everyday usage and other usefull"
echo "utilities. This is ideal after a fresh install to get things up and"
echo "running faster."
echo " "
echo " "
echo " "
echo "Note*"
echo "You must run the using sudo"
echo " "
echo "Example:"
echo "sudo ./Linux-Mint-Essentials.sh"
echo " "
echo " "
echo "==============================================================================="
echo "*******************************************************************************"
echo ""
sleep 8
echo "Starting script"
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
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-add-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'
wget -nc https://dl.winehq.org/wine-builds/Release.key && sudo apt-key add Release.key
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/tor-browser
sudo add-apt-repository -y ppa:nathan-renniewaldock/flux
sudo wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | sudo apt-key add - && \
sudo wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list && \
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:cairo-dock-team/ppa
sudo add-apt-repository -y ppa:utappia/stable
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
dpkg -s apt-transport-https > /dev/null || bash -c "sudo apt-get update; sudo apt-get install apt-transport-https -y"
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb [arch=amd64] https://repo.skype.com/deb unstable main" | sudo tee /etc/apt/sources.list.d/skype-unstable.list
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
sudo apt-get -q -y -m update
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
sudo apt-get -q -y install grub-customizer
sudo apt-get -q -y install --install-recommends winehq-devel
sudo apt-get -q -y install oracle-java9-installer oracle-java9-set-default
sudo apt-get -q -y install tor-browser
sudo apt-get -q -y install ucaresystem-core
sudo apt-get -q -y install skypeforlinux
sudo apt-get -q -y install numix-icon-theme-circle
sudo apt-get -q -y install numix-icon-themebevel
sudo apt-get -q -y install numix-tools
sudo apt-get -q -y install numix-icon-theme
sudo apt-get -q -y install numix-gtk-theme
sudo apt-get -q -y install spotify-client
sudo apt-get -q -y install nestopia
sudo apt-get -q -y install teamviewer
sudo apt-get -q -y install bleachbit
sudo apt-get -q -y install filezilla
sudo apt-get -q -y install audacity 
sudo apt-get -q -y install libreoffice-style-breeze
sudo apt-get -q -y install cairo-dock cairo-dock-plug-ins
sudo apt-get -q -y install fluxgui
sudo apt install code
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
wget http://mirrors.kernel.org/ubuntu/pool/main/n/ndg-httpsclient/python-ndg-httpsclient_0.4.2-1_all.deb
wget https://github.com/Automattic/simplenote-electron/releases/download/v1.0.8/simplenote-1.0.8.deb
sudo dpkg -i --force-all google-chrome*
sudo dpkg -i --force-all viber*
sudo dpkg -i --force-all python-ndg-httpsclient*
sudo dpkg -i --force-all simplenote*
sudo rm -rf google-chrome*
sudo rm -rf viber*
sudo rm -rf simplenote*
sudo rm -rf python-ndg-httpsclient*
mkdir Nestopia-ROMS
cd Nestopia-ROMS/
wget https://www.dropbox.com/s/22oq8s7vttb2hhg/supermario.nes?dl=0
cd ..
sudo chmod +x Nestopia-ROMS/ -R
echo ""
echo ""
#Download and install the latest stable Linux Kernel 4.14.15
#===============================================================================
echo "*******************************"
echo "Install Latest Stable Linux Kernel v4.14.15"
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
echo "Downloading header files.."
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
echo ""
echo ""
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14.15/linux-headers-4.14.15-041415_4.14.15-041415.201801231530_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14.15/linux-headers-4.14.15-041415-generic_4.14.15-041415.201801231530_amd64.deb
echo ""
echo ""
echo "Downloading kernel image.."
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
echo ""
echo ""
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14.15/linux-image-4.14.15-041415-generic_4.14.15-041415.201801231530_amd64.deb
echo "----------------------------------------"
echo ""
echo ""
echo "Begin Installation..."
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
echo ""
echo ""
sudo dpkg -i *.deb
echo ""
echo "----------------------------------------"
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
sudo apt-get -q -y -m -f dist-upgrade
sudo apt-get -q -y -m autoclean
sudo apt-get -q -y -m -f autoremove
echo ""
echo ""
echo "       Linux-Mint-Essentials script is complete!"
echo "*******************************************************************************"
echo "==============================================================================="
sleep 3
echo ""
echo ""
read -r -p "Would you like to reboot? [y/N]? " prompt
if [ "$prompt" = y -o "$prompt" = Y -o "$prompt" = yes -o "$prompt" = Yes -o "$prompt" = YES ]
then
    sudo reboot
else
    exit 0
fi
