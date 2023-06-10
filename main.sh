if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

apt install sudo -y

GITHUB_BASE_URL="https://raw.githubusercontent.com/Mixail89/vpsscripts/main"
echo "#######################################################################################"
echo "#"
echo "#                                  MIXAIL89.OVH SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2020 - 2023, MIXAIL89.OVH"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [1] Install Basic Packages"
echo "* [2] Install Pterodactyl Panel"
echo "* [3] Install PufferPanel"
echo "* [4] Install FastPanel"
echo "* [0] Exit"

read -p "Enter Input (1-4): " input

case $input in

    1)
    wget -N "$GITHUB_BASE_URL"/scripts/packages/install.sh && bash install.sh;;
    2)
    wget -N "$GITHUB_BASE_URL"/scripts/pterodactyl/install.sh && bash install.sh;;
    3)
    wget -N "$GITHUB_BASE_URL"/scripts/pufferpanel/install.sh && bash install.sh;;
    4)
    wget -N "$GITHUB_BASE_URL"/scripts/fastpanel/install.sh && bash install.sh;;
    0) echo "Exit" && exit;;
esac