echo "#######################################################################################"
echo "#"
echo "#                                  MIXAIL89.OVH SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2020 - 2023, MIXAIL89.OVH"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [1] Install FastPanel"
echo "* [0] Exit"
echo ""

read -p "Enter Input (1-4): " input


case $input in

    1) 
    apt-get update
    apt-get install wget
    wget http://repo.fastpanel.direct/install_fastpanel.sh -O - | bash -;;
    0) echo "Exit" && exit;;
esac