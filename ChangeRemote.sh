#!/bin/sh
remote=$1
test -z $remote && echo "Remote name required" 1>&2 && exit 1
git remote rm origin
git remote add origin $remote