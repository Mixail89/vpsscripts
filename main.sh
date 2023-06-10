if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

apt install sudo -y


echo "#######################################################################################"
echo "#"
echo "#                                  MIXAIL89.OVH SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2020 - 2023, MIXAIL89.OVH"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [0] Install PufferPanel"
echo "* [1] Install FastPanel"
echo "* [2] Install CRDP/XRDP"
echo "* [3] Install Basic Packages"
echo "* [4] Install Pterodactyl Panel"
echo "* [5] Exit"

read -p "Enter Input (0-4): " input

case $input in

    0)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel;;
    1)
    wget -N https://raw.githubusercontent.com/Mixail89/vpsscripts/main/scripts/fastpanel/install.sh && bash install.sh;;
    2)
    wget -N https://raw.githubusercontent.com/Mixail89/vpsscripts/main/scripts/crdpscript/install.sh && bash install.sh;;
    3)
    apt install git neofetch sudo
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    4)
    wget -N https://raw.githubusercontent.com/Mixail89/vpsscripts/main/scripts/pterodactyl/install.sh && bash install.sh;;
    5) echo "Exit" && exit;;
esac