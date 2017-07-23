#!/bin/bash

curl -o ./env/nginx.conf.d/nginx.conf.sample https://raw.githubusercontent.com/magento/magento2/develop/nginx.conf.sample

mkdir -p ./www/html
mkdir -p www/m2/test.m2/current/pub/
echo "hello" > www/m2/test.m2/current/pub/index.php


ln -sfn ./test.m2 ./www/m2/$(curl ifconfig.co)
ln -sfn ./test.m2 ./www/m2/nginx

