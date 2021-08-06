#!/usr/bin/env zsh
git init /home/lomi/Documents/PythonProject/$1
cd /home/lomi/Documents/PythonProject/$1
gh repo create --template lomira/python_template
git pull origin main
$SHELL