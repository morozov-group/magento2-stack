#!/bin/bash

curl -o ./env/nginx.conf.d/nginx.conf.sample https://raw.githubusercontent.com/magento/magento2/develop/nginx.conf.sample

mkdir -p ./www/html

ln -sfn ./test.m2 ./www/m2/$(curl ifconfig.co)
ln -sfn ./test.m2 ./www/m2/nginx

