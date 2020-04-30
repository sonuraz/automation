#!/data/data/com.termux/files/usr/bin/bash env

############################################
#  TCA Automation Environment Setup Script
############################################
# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

# Install LOLCat via Ruby's package manager
gem install lolcat

# Remove existing files
tsu -c 'find . -iname '*Automation.sh*' -exec rm -rf {} \;'

# Fetch the script and setup
tsudo wget https://raw.githubusercontent.com/TeamTCA/TCA-Automation/master/Automation.sh -O ./Automation.sh
tsu -c chmod a+x Automation.sh
tsu -c ./Automation.sh
