#!/bin/bash

cd /${1}

if [ ! -d /${1}/.xmake ]; then
    rm -rf /${1}/build
fi

if [ -f /${1}/setup.sh ]; then
    bash /${1}/setup.sh
fi
