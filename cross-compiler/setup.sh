#!/bin/bash

cd /${1}

if [ -f /${1}/setup.sh ]; then
    bash /${1}/setup.sh ${2}
fi
