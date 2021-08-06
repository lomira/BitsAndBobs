#!/usr/bin/env zsh
git init /home/lomi/Documents/PythonProject/$1
cd /home/lomi/Documents/PythonProject/$1
gh repo create --template lomira/python_template
git pull origin main
mv module_name $1
$SHELL