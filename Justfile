image_tag := "ps2sdk"
zig_lib_dir := `zig env | jq -r .lib_dir`
docker := "podman"
pcsx2 := "pcsx2-qt"
bios := "~/.config/PCSX2/bios/SCPH-70012.bin"
cp := "cp --no-preserve=all"

default: build

build_image:
    {{docker}} build -q -t {{image_tag}} .

copy_headers: build_image
    [ -d include ] || {{docker}} run -v$PWD:/mnt {{image_tag}} ./copy_headers.sh

build: copy_headers
    mkdir -p build
    {{cp}} "{{zig_lib_dir}}/zig.h" build
    zig build-exe -target mipsel-other-gnu -ofmt=c -Iinclude src/main.zig -femit-bin=build/main.c
    {{docker}} run -v$PWD:/mnt {{image_tag}} ./build.sh

run:
    {{pcsx2}} {{bios}} -elf $PWD/build/main.elf

clean:
    rm -rf build