#!/bin/bash

cd tempfolder
git clone github.com/swiftly-solution/swiftly
cd swiftly; mv plugin_files/scripting/* ..; cd ..

cd /tempfolder/${1}
make