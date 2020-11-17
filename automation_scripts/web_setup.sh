#!/usr/bin/env bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install python3-pip git python3-venv -y
git clone "https://github.com/Pomatoo/db_project.git"
python3.8 -m venv ~/db_project/flask-app/venv
source ~/db_project/flask-app/venv/bin/activate
pip3 install --upgrade pip
pip3 install -r ~/db_project/flask-app/requirements
pip3 install PyMySQL pymongo boto3 Flask Flask-WTF Flask-Bcrypt Flask-Login Flask-PyMongo Flask-SQLAlchemy fabric WTForms -y
python3.8 ~/db_project/flask-app/run.py