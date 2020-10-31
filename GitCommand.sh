#!/bin/sh
repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1
git init
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin "$repo_name"
git push -u origin main