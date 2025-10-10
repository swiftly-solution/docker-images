#!/bin/bash

cd /${1}

xmake -j $(nproc)
