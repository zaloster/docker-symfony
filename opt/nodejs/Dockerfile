FROM centos:7

RUN yum -y install wget curl unzip g++ make mc vim tar gcc pcre-devel openssl-devel patch libmcrypt-devel libxml2-devel bzip2-devel libcurl libcurl-devel readline-devel 
RUN yum -y update

# Repos
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm

RUN yum -y install nodejs npm

# Install Bower & Gulp
RUN npm install -g bower gulp

RUN echo '{ "allow_root": true }' > /root/.bowerrc

