#!/bin/bash
echo $PATH
pwd
cd /var/www/html
rm -rf node_modules
npm install
npm start