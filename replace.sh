#!/bin/bash

git pull origin master 
git config credential.helper store

find /var/www/html/wl2 -name "*.env" -exec sed -i 's/APP_ENV=LOCAL/APP_EVN=DEV/g' {} \;

