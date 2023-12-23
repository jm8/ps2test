#!/bin/sh

# copy header files
mkdir -p /mnt/include
cp -r /usr/local/ps2dev/ps2sdk/ee/include/* /mnt/include
cp -r /usr/local/ps2dev/ps2sdk/common/include/* /mnt/include

# build
cd /mnt
make