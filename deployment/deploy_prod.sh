#!/bin/sh

ssh root@34.217.86.102 <<EOF
  cd blogproject-app
  git pull 
  source env/bin/activate
  ./manage.py migrate
  sudo systemctl restart nginx
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF