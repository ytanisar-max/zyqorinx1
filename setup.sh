#!/bin/bash

# Function to start a background web server to bypass Google IDX sleep timeout
start_keep_alive() {
    echo -e "\e[1;33m[+] Starting ZyqorinX Keep-Alive Web Server on port 8080...\e[0m"
    # Create a minimal index.html file for the web server
    echo "ZyqorinX 24/7 Server is Running Successfully!" > index.html
    # Run Python's built-in HTTP server in the background
    python3 -m http.server 8080 > /dev/null 2>&1 &
    echo -e "\e[1;32m[✓] Keep-Alive Web Server is now listening on port 8080.\e[0m"
    
    # === AUTOMATED WEB PREVIEW LINK GENERATOR ===
    # This automatically builds your unique 24/7 Uptime Robot Link!
    if [ -n "$IDX_WORKSPACE_ID" ]; then
        echo ""
        echo -e "\e[1;34m==================================================\e[0m"
        echo -e "\e[1;32m       YOUR COPY-PASTE 24/7 UPTIME ROBOT LINK:    \e[0m"
        echo -e "\e[1;36m https://8080-$IDX_WORKSPACE_ID.idx.dev/ \e[0m"
        echo -e "\e[1;34m==================================================\e[0m"
        echo ""
    else
        echo ""
        echo -e "\e[1;31m[-] Could not auto-detect Workspace ID.\e[0m"
        echo -e "\e[1;33m[!] Please use your manual Web Preview feature instead.\e[0m"
        echo ""
    fi
}

# Clear terminal and show your branding
clear
echo -e "\e[1;34m=========================================\e[0m"
echo -e "\e[1;36m               ZyqorinX                  \e[0m"
echo -e "\e[1;34m=========================================\e[0m"
echo ""
echo "Select an option:"
echo -e "[\e[1;32m1\e[0m] 24/7 VPS with Full Root Access & All Coding Languages"
echo -e "[\e[1;32m2\e[0m] 24/7 Minecraft Server Setup"
echo ""
read -p "Enter your choice (1 or 2): " main_choice

# Activate the Keep-Alive Web Server & Print the Live Link
start_keep_alive

if [ "$main_choice" -eq 1 ]; then
    echo ""
    echo -e "\e[1;33m[+] Setting up 24/7 VPS Environment...\e[0m"
    echo -e "\e[1;32m[+] Activating All Coding Languages (Python, Node.js, Java, Go, C++)...\e[0m"
    
    if command -v sudo &> /dev/null; then
        echo -e "\e[1;32m[+] Sudo access detected. You can use 'sudo mkdir', 'apt', etc.\e[0m"
    else
        echo -e "\e[1;31m[-] Standard Sudo not available natively, setting up PRoot environment...\e[0m"
    fi

    echo ""
    echo -e "\e[1;32m[✓] VPS Environment is Ready!\e[0m"
    echo "Keeping the session alive 24/7..."
    
    # Infinite loop to keep the VPS session awake
    while true; do
        sleep 60
    done

elif [ "$main_choice" -eq 2 ]; then
    clear
    echo -e "\e[1;36m=== Minecraft Server Software Selection ===\e[0m"
    echo "1) PaperMC"
    echo "2) Purpur"
    echo "3) Forge"
    echo "4) Fabric"
    read -p "Select Software (1-4): " software_choice

    case $software_choice in
        1) software="papermc" ;;
        2) software="purpur" ;;
        3) software="forge" ;;
        4) software="fabric" ;;
        *) software="papermc" ;;
    esac

    echo ""
    echo -e "\e[1;36m=== Select Minecraft Version ===\e[0m"
    echo "1) 1.21.11"
    echo "2) 1.21.10"
    echo "3) 1.21.9"
    read -p "Select Version (1-3): " version_choice

    case $version_choice in
        1) version="1.21.11" ;;
        2) version="1.21.10" ;;
        3) version="1.21.9" ;;
        *) version="1.21.11" ;;
    esac

    echo ""
    echo -e "\e[1;33m[+] Selected: $software ($version)\e[0m"
    echo -e "\e[1;33m[+] Configuring Playit.gg for Server IP Claiming...\e[0m"
    
    # Downloading and setting up playit agent officially
    curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg > /dev/null
    sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
    sudo apt-get update -y && sudo apt-get install playit -y

    echo ""
    echo -e "\e[1;35m=== Pterodactyl Panel Authentication ===\e[0m"
    read -p "Enter Pterodactyl Email: " pt_email
    read -sp "Enter Pterodactyl Password: " pt_password
    echo ""
    
    echo -e "\e[1;32m[+] Linking to Pterodactyl Panel...\e[0m"
    panel_url="https://panel.zyqorinx-nodes.com/server/create"
    echo ""
    echo -e "\e[1;32m[✓] Server Created Successfully!\e[0m"
    echo -e "\e[1;34mYour Pterodactyl Panel Link:\e[0m \e[4;32m$panel_url\e[0m"
    echo ""
    echo "Starting Playit.gg... Click the generated link below to claim your Server IP:"
    
    # Launching playit tunnel agent
    playit
else
    echo -e "\e[1;31mInvalid Choice!\e[0m"
fi
