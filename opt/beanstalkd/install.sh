#!/bin/bash

# exit if a command fails
set -e

version="1.10"

curl -sL https://github.com/kr/beanstalkd/archive/v$version.tar.gz | tar xvz -C /tmp

cd /tmp/beanstalkd-$version
make
make install
