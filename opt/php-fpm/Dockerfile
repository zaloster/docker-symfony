FROM centos:7

RUN yum -y install wget curl unzip g++ make mc vim tar gcc pcre-devel openssl-devel patch libmcrypt-devel libxml2-devel bzip2-devel libcurl libcurl-devel readline-devel git libicudata
RUN yum -y update

# Repos
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

# PHP 5.6
RUN yum -y install php56w-fpm php56w-mcrypt php56w-mbstring php56w-pgsql php56w-pdo php56w-soap php56w-xml php56w-gd php56w-pecl-imagick php56w-intl php56w-pecl-redis

RUN groupadd -r www-data \
  && useradd -r -g www-data www-data

RUN usermod -u 1000 www-data
RUN mkhomedir_helper www-data

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

ADD www.conf /etc/php-fpm.d/
ADD symfony.ini /etc/php.d/
ADD .gitconfig /home/www-data/
ADD known_hosts /home/www-data/.ssh/

ENTRYPOINT ["/usr/sbin/php-fpm", "-F"]

EXPOSE 9000
