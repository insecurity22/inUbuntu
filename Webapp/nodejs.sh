#! /bin/bash
# Install NodeJS

echo -e "\n\nInstall NodeJS\n\n"
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt-get install nodejs

echo -e "\n\nCheck\n\n"
node -v
npm -v
