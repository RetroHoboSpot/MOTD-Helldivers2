# MOTD democracy for Linux terminals 

Hello Fellow Hellvivers, 

Democracy! 

Ever thought dam I need more Democracy!

well me too!  so I smash some junk together to make it happen.

**first time using Github but I thought i should write this down somewhere!**  


Training tips are found here:
- [helldivers Wiki](https://helldivers.wiki.gg/wiki/Training_Manual_Tips#:~:text=Training%20Manual%20Tips%201%20Super%20Earth%20has%20many,could%20result%20in%20a%20child.%20...%20More%20items)


# install 

so I just made these files and added them to /etc/

1. motd.txt
2. motd.sh

Copy them to **/etc/** and follow steps 3 and 4 


# Step 1: Create a Text File with Messages
I created a text file named motd.txt in /ETC/ and added the quotes to it. Each line will be a potential Democracy MOTD message.

# Step 2: Create the MOTD Script
Created a shell script in /ETC/ named motd.sh:

```bash
Copy code
#!/bin/bash

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
echo -e "${ORANGE}TRANING MAUNAL TIPS${NC}"
echo "$motd_message"
echo 
```

Replace **/path/to/motd.txt** with the actual path to your motd.txt file.

# Step 3: Make the Script Executable
Make the motd.sh script executable:
```bash
chmod +x motd.sh
```

# Step 4: Configure the MOTD to Run the Script
To display the MOTD using the motd.sh script, you need to configure the system to run the script upon login. This can be done by adding a line to the ~/.bashrc or ~/.profile file.

Edit the ~/.bashrc file:

```bash
nano ~/.bashrc
```

Add the following line at the end of the file:

```bash
/path/to/motd.sh
```
Replace **/path/to/motd.sh** with the actual path to your motd.sh script.

## Screenshots

Democracy! 
![App Screenshot](https://raw.githubusercontent.com/RetroHoboSpot/MOTD-Helldivers2/b10811906c8960a3f480867eddf4822569d6fb77/HD2-Normal.png)


With ASCII art
![App Screenshot](https://raw.githubusercontent.com/RetroHoboSpot/MOTD-Helldivers2/b10811906c8960a3f480867eddf4822569d6fb77/HD2-art.png)

## Acknowledgements

 - [helldivers Wiki](https://helldivers.wiki.gg/wiki/Training_Manual_Tips#:~:text=Training%20Manual%20Tips%201%20Super%20Earth%20has%20many,could%20result%20in%20a%20child.%20...%20More%20items)
 - [ChatGPT - to help celan up the code](https://chat.openai.com/)

