image_tag := "ps2sdk"
zig_lib_dir := `zig env | jq -r .lib_dir`
docker := "docker"
pcsx2 := "/var/lib/flatpak/exports/bin/net.pcsx2.PCSX2"
bios := "~/.config/PCSX2/bios/SCPH-70012.bin"
zigflags := "-target mipsel-freestanding-gnu -Iinclude -lc -fsingle-threaded -O Debug"
dockerrun := docker + " run --net=host -v$PWD:/mnt -it " + image_tag
# ps2client:= dockerrun + " ps2client -h 192.168.0.10"
ps2client:= "ps2client -h 192.168.0.10"
interface:="enp0s13f0u4"

default: build

build_image:
    {{docker}} build -q -t {{image_tag}} .

shell: build_image
    {{dockerrun}} /bin/sh

copy_headers: build_image
    {{dockerrun}} ./copy_headers.sh

translate_headers: copy_headers
    zig translate-c {{zigflags}} src/headers.h > src/headers.zig

build: translate_headers
    mkdir -p build
    cp --no-preserve=all "{{zig_lib_dir}}/zig.h" build
    zig build-exe {{zigflags}} -ofmt=c -femit-bin=build/main.c src/main.zig
    {{dockerrun}} ./build.sh

emulate:
    {{pcsx2}} {{bios}} -elf $PWD/build/main.elf

ps2reset: build_image
    {{ps2client}} reset -t 5

ps2run: build_image
    just ps2reset
    {{ps2client}} execee host:./build/main.elf

ps2poweroff: build_image
    {{ps2client}} poweroff

ps2logs:
    sudo tcpdump -n -i {{interface}} -A udp port 18194

clean:
    rm -f src/headers.zig
    rm -rf build
