FROM centos:7

RUN yum -y install curl unzip g++ make mc vim tar gcc pcre-devel openssl-devel patch libmcrypt-devel libxml2-devel bzip2-devel libcurl libcurl-devel readline-devel

ADD install.sh install.sh
RUN chmod +x install.sh
RUN ./install.sh && rm install.sh


VOLUME ["/data/beanstalkd"]
EXPOSE 11300
CMD ["beanstalkd", "-f", "1000", "-b", "/data/beanstalkd"]
