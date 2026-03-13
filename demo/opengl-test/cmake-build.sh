#!/bin/bash
# using the cmake build the project
# 2026.3.13 by dralee

bdir=build

if [ -d $bdir ]; then
	echo clean the old build.
	rm -rf $bdir
fi

mkdir $bdir
cd $bdir

cmake ..
make
