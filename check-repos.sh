#!/usr/bin/env bash

# check: [[ -z $(git status -s) ]]

dir=`pwd`

cd ~/etc
git status -s

cd ~/bin
git status -s

cd ${dir}
