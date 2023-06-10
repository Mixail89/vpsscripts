if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

apt install sudo -y

export GITHUB_BASE_URL="https://raw.githubusercontent.com/Mixail89/vpsscripts/main"
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
    wget -N "$GITHUB_BASE_URL"/scripts/pufferpanel/install.sh && bash install.sh;;
    1)
    wget -N "$GITHUB_BASE_URL"/scripts/fastpanel/install.sh && bash install.sh;;
    2)
    wget -N "$GITHUB_BASE_URL"/scripts/crdpscript/install.sh && bash install.sh;;
    3)
    apt install git neofetch sudo
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    4)
    wget -N "$GITHUB_BASE_URL"/scripts/pterodactyl/install.sh && bash install.sh;;
    5) echo "Exit" && exit;;
esac