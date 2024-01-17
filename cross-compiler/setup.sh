#!/bin/bash

cd /${1}

rm -rf /${1}/build

if [ -f /${1}/setup.sh ]; then
    bash /${1}/setup.sh
else
    mkdir /${1}/build
    cd /${1}/build
    CC=gcc CXX=g++ python3 ../configure.py --plugin-name=${1} -s cs2
    cd /${1}
fi

cd /${1}/build
ambuild