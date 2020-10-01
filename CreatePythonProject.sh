#!/usr/bin/env zsh
mkdir /home/lomi/Documents/PythonProject/$1
cd /home/lomi/Documents/PythonProject/$1

gh repo create $1 --private --confirm
git init

echo "# $1" >> README.md
git add README.md


lo=$( tr '[A-Z]' '[a-z]' <<< $1)

mkdir data
mkdir test
mkdir $lo

touch $lo/$lo.py
git add $lo/$lo.py
touch $lo/__init__.py
git add $lo/__init__.py
touch $lo/helpers.py
git add $lo/helpers.py

touch test/$lo_test.py
git add test/$lo_test.py
touch test/helpers_test.py
git add test/helpers_test.py

git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:lomira/$1.git
git push -u origin master
code .