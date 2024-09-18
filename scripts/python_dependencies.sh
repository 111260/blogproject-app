#!/usr/bin/env bash

sudo chown -R ubuntu:ubuntu ~/blogproject-app
virtualenv /home/ubuntu/blogproject-app/venv
source /home/ubuntu/blogproject-app/venv/bin/activate
pip install -r /home/ubuntu/blogproject-app/requirements.txt