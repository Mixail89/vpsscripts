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
echo "* [0] Exit"
echo ""

read -p "Enter Input (1/0): " input


case $input in

    1)
    apt install git neofetch sudo
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    0) bash <(curl -s https://raw.githubusercontent.com/Mixail89/vpsscripts/main/main.sh);;
esac