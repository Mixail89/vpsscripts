echo "#######################################################################################"
echo "#"
echo "#                                  MIXAIL89.OVH SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2020 - 2023, MIXAIL89.OVH"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [1] Install PufferPanel"
echo "* [0] Exit"
echo ""

read -p "Enter Input (1/0): " input


case $input in

    1)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel
    echo "##############################"
    echo ""
    echo "Installed pufferpanel"
    echo ""
    echo "##############################";;
    0) bash <(curl -s https://raw.githubusercontent.com/Mixail89/vpsscripts/main/main.sh);;
esac