#!/bin/bash

# make sure a dirname was passed
# https://stackoverflow.com/questions/13509508/check-if-string-is-neither-empty-nor-space-in-shell-script
if ! [[ -n "${1// /}" ]]; then
    echo "No dirname passed!"
    echo "Please pass one as the first arg!"
    exit 1
fi

# do git stuff
git clone -q -- https://github.com/TheDinner22/new_cpp_project.git ./$1

# funny git reset haha
cd ./$1
rm -rf ./.git
git init

# get rid of build script which is in the project
# because it is also in the github repo
rm -rf ./new_cpp_project.sh

# get rid of readme
rm -rf ./README.md

# build the helloworld app
make

