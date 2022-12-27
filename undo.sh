#!/bin/bash

git pull origin master

find /var/www/html/wl2/dev/ -name "*.env" -exec sed -i 's/APP_ENV=DEV/APP_ENV=LOCAL/g' {} \;

find /var/www/html/wl2/testing/ -name "*.env" -exec sed -i 's/APP_ENV=TEST/APP_ENV=LOCAL/g' {} \;
pwd






