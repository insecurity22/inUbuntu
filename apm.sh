#! /bin/bash
# Install Apache, Php, MySQL

function apterror() {
	if [ "$ERR_MSG" != "" ]; then
		sudo rm /var/cache/apt/archives/lock
		sudo rm /var/lib/dpkg/lock
	fi
}

# You want
# echo -e "\n\nUpdate, Upgrade\n\n"
# sudo apt-get update
# sudo apt-get upgrade
# apterror

echo -e "\n\nInstall APM\n\n"
sudo apt-get install apache2
sudo apt-get install mysql-server mysql-client
sudo apt-get install php
apterror

echo -e "\n\nInstall package for connecting apache and php\n"
echo -e "\n\nInstall package for connecting php and mysql\n\n"
sudo apt-get install libapache2-mod-php php-xml php-gd php-mysql php-mbstring php-gettext
apterror

echo -e "\n\nStart apache2 and mysql\n\n"
sudo /etc/init.d/apache2 restart
sudo /etc/init.d/mysql restart

# Check
# sudo netstat -atp | grep apache2
# sudo netstat -atp | grep mysqld
