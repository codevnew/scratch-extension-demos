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
echo
git push master
echo
git fetch
echo
git add /workspaces/$username/.
echo
git commit -m "commit"
echo
git pull
echo
git push
echo
git merge -m "merge"

if [ "$change" -eq 1 ]; then
	cd $filepath1
fi