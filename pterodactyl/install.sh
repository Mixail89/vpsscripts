if warp h foo >/dev/null 2>&1; then
    echo "##############################"
    echo ""
    echo "Install Pterodactyl Panel 10 seconds"
    echo ""
    echo "##############################"
    sleep 10
    apt update -y && apt install curl -y
    bash <(curl -s https://pterodactyl-installer.se)



else
    echo ""
    
    fi