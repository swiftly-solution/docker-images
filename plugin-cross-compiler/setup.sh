#!/bin/bash

git clone github.com/swiftly-solution/swiftly
cd swiftly; mv plugin_files/scripting/* ..; cd ..

cd /${1}
make