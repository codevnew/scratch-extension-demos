#!/bin/bash

change=0
username=scratch-extension-demos                                  #"$(gh api user --jq .login)"
filepath1=$(pwd)
filepath2="/workspaces/scratch-extension-demos/"

echo "$filepath1 $username"

if [ "$filepath1" != $filepath2 ]; then
	change=1
	cd $filepath2
fi

git fetch
git pull
git add /workspaces/$username/.
git merge -m "merge"
git commit -m "commit"
git push

if [ "$change" -eq 1 ]; then
	cd $filepath1
fi