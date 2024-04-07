#!/bin/bash

# Spot
# Path to the MOTD text file
MOTD_FILE="/etc/motd.txt"

# Get the number of lines in the MOTD file
num_lines=$(wc -l < "$MOTD_FILE")

# Generate a random number within the range of the number of lines
random_num=$((RANDOM % num_lines + 1))

# Get the random MOTD message
motd_message=$(sed -n "${random_num}p" "$MOTD_FILE")

# Display the MOTD message
echo
echo TRANING MAUNAL TIPS
echo "$motd_message"
echo
