#!/bin/bash
yum update -y
yum install -y python3 python3-pip python3-setuptools
python3 -m pip install flask
mkdir /website
cd /website
curl https://s3.amazonaws.com/ee-assets-prod-us-east-1/modules/9c0e89820b864addaed45ec2f5440379/v1/2fbc9891-0eb4-46d2-bd7c-80de01065e26/flask_website.zip -o /website/unicorn_rentals.zip
unzip unicorn_rentals.zip
chmod +700 unicornrentalswebserver.py
./unicornrentalswebserver.py