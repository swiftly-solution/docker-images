#!/bin/bash

FOLDER=${1}

cd /$FOLDER

rm -rf /$FOLDER/build

if [ -f /$FOLDER/setup.sh ]; then
    bash /$FOLDER/setup.sh
else
    mkdir /$FOLDER/build
    cd /$FOLDER/build
    CC=gcc CXX=g++ python3 ../configure.py --plugin-name=$FOLDER -s cs2
    cd /$FOLDER
fi

cd /$FOLDER/build
ambuild