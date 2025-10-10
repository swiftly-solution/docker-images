#!/bin/bash

source ~/.xmake/profile

cd /${1}

export XMAKE_ROOT=y
xmake -j $(nproc) -y
