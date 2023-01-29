#!/usr/bin/bash
echo "Install pipenv"
sleep 2
pip install pipenv

echo "Create the virtual environment"
sleep 2
cd ~/local_development
pipenv install --python 3.9 --requirements ./containers/requirements.txt