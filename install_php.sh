#!/bin/bash
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sudo echo "deb https://packages.sury.org/php/ bullseye main" | sudo tee /etc/apt/sources.list.d/php.list

sudo apt update \
  && sudo apt install -y php8.1-fpm \
  && sudo apt install -y \
  php8.1-{bcmath,bz2,cli,curl,fpm,gd,intl,mbstring,mysql,redis,sockets,sqlite3,pcov,opcache,xml,zip}

sudo update-alternatives --set php /usr/bin/php8.1 && \
sudo update-alternatives --set phar /usr/bin/phar8.1 && \
sudo update-alternatives --set phar.phar /usr/bin/phar.phar8.1