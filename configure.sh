#!/bin/bash
set -o errexit
cd /home/pancake/conf
cp example.conf default.conf
sed -i "s/CONF_API_KEY/$CONF_API_KEY/" default.conf
sed -i "s/CONF_NAME/$CONF_NAME/" default.conf
sed -i "s/CONF_ROOMS/$CONF_ROOMS/" default.conf
cd ..
cat conf/default.conf
pip install -r requirements.txt
./pancake.py -c default.conf