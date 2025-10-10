#!/bin/bash

source ~/.xmake/profile

cd /${1}

export XMAKE_ROOT=y
xmake f --cc=gcc-14 --cxx=g++-14 -y
xmake -j $(nproc) -y
