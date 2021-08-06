#!/usr/bin/env zsh
git init ~/Documents/PythonProject/$1
cd ~/Documents/PythonProject/$1

gh repo create --template lomira/python_template

git push --set-upstream origin main