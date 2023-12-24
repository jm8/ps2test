#!/bin/sh
set -euxo pipefail
# this is run in the docker container

# build
cd /mnt/build

mips64r5900el-ps2-elf-gcc -D_EE -G0 -O2 -Wall -gdwarf-2 -gz  -I/usr/local/ps2dev/ps2sdk/ee/include -I/usr/local/ps2dev/ps2sdk/common/include -I. -c main.c -o main.o
mips64r5900el-ps2-elf-gcc -T/usr/local/ps2dev/ps2sdk/ee/startup/linkfile -O2 -o main.elf main.o -L/usr/local/ps2dev/ps2sdk/ee/lib -Wl,-zmax-page-size=128 -ldraw -lgraph -lmath3d -lpacket -ldma
mips64r5900el-ps2-elf-strip --strip-all main.elf