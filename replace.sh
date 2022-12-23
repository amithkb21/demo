#!/bin/bash

git pull origin master

find /var/www/html/wl2/dev -name "*.env" -exec sed -i 's/APP_ENV=LOCAL/APP_EVN=DEV/g' {} \;


