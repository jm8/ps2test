#!/bin/sh

# this is run in the docker container

mkdir -p /mnt/include
cp -r /usr/local/ps2dev/ps2sdk/ee/include/* /mnt/include
cp -r /usr/local/ps2dev/ps2sdk/common/include/* /mnt/include
cp -r /usr/include/* /mnt/include
cp -r /usr/lib/gcc/x86_64-alpine-linux-musl/12.2.1/include/* /mnt/include
