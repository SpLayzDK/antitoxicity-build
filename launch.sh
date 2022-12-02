#!/bin/bash
rm -rf AntiToxicity
KEY=$(curl http://auth.antitoxicity.cloud/antitoxicity/github_pat?only_secret=yes)
git clone -b production https://splayzdk:${KEY}@github.com/splayzdk/AntiToxicity
cd AntiToxicity
rm -rf .git
python3 -m venv venv
venv/bin/python3 -m pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org -r requirements.txt
echo Starting...
sleep 1
venv/bin/python3 main.py
