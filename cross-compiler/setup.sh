#!/bin/bash

cd /${1}

if [ ! -f /${1}/.xmake ]; then
    rm -rf /${1}/build
end

if [ -f /${1}/setup.sh ]; then
    bash /${1}/setup.sh
fi
