#!/bin/bash

cd /root/project-ssquad-sebastian
git fetch && git reset --hard  origin/main
source python3-virtualenv/bin/activate
pip3 install -r requirements.txt

#tmux new-session -d -s myportfolio 'source python3-virtualenv/bin/activate && flask run --host=0.0.0.0'
systemctl restart myportfolio.service
