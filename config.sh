sudo apt install git;
git config --global user.email "lourenco@gdavlab.com";
git config --global user.name "Lourenco Werneck";

sudo sysctl net.ipv6.conf.all.disable_ipv6=1

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend;
sudo rm /var/cache/apt/archives/lock;

## PHP 8.2
sudo apt update;
sudo apt upgrade;
sudo add-apt-repository ppa:ondrej/php;
sudo apt update;
sudo apt upgrade;
sudo apt install php8.2 -y;
php --version;

## composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

composer global require laravel/installer

sudo apt install nano

nano ~/.bashrc

## add
## export PATH="~/.config/composer/vendor/bin:$PATH" 
source ~/.bashrc

sudo apt install php8.2-zip

sudo apt install php8.2-xml
sudo apt install php8.2-curl


#node
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y

#postgres
sudo apt update
sudo apt install postgresql postgresql-contrib

sudo -i -u postgres
# createdb personal_fitness_platform

sudo -i -u postgres psql
# ALTER USER postgres PASSWORD 'postgres';