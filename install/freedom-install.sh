#!/bin/bash

#Spot was here 2024

# Download junk from GitHub
wget https://raw.githubusercontent.com/RetroHoboSpot/MOTD-Helldivers2/main/motd.sh
wget https://raw.githubusercontent.com/RetroHoboSpot/MOTD-Helldivers2/main/motd.txt
wget https://raw.githubusercontent.com/RetroHoboSpot/MOTD-Helldivers2/main/motd-art.txt


# Move files to /etc/
sudo mv motd.sh /etc/
sudo mv motd.txt /etc/

# Make motd.sh executable
sudo chmod +x /etc/motd.sh

# Add "/etc/motd.sh" to the end of ~/.bashrc
echo "/etc/motd.sh" >> ~/.bashrc

echo "Setup completed helldiver!"
