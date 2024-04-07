o#!/bin/bash

#spot was here!

# Path to the MOTD text file
MOTD_FILE="/etc/motd.txt"

# Get the number of lines in the MOTD file
num_lines=$(wc -l < "$MOTD_FILE")

# Generate a random number within the range of the number of lines
random_num=$((RANDOM % num_lines + 1))

# Get the random MOTD message
motd_message=$(sed -n "${random_num}p" "$MOTD_FILE")

# Orange color code
ORANGE='\033[0;33m'
# Reset color code
NC='\033[0m'

# Display the MOTD message
echo
# unhash next line to add Helldivers logo
# echo "$(</etc/motd-art.txt )" 
echo -e "${ORANGE}TRANING MANUAL TIPS${NC}"
echo "$motd_message"
echo
