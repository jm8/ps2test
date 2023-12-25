image_tag := "ps2sdk"
zig_lib_dir := `zig env | jq -r .lib_dir`
docker := "podman"
pcsx2 := "pcsx2-qt"
bios := "~/.config/PCSX2/bios/SCPH-70012.bin"
cp := "cp --no-preserve=all"
zigflags := "-target mipsel-freestanding-gnu -Iinclude -fsingle-threaded"

default: build

build_image:
    {{docker}} build -q -t {{image_tag}} .

copy_headers: build_image
    {{docker}} run -v$PWD:/mnt {{image_tag}} ./copy_headers.sh

translate_headers: copy_headers
    zig translate-c {{zigflags}} src/headers.h > src/headers.zig

build: translate_headers
    [ -e src/headers.zig ] || just translate_headers
    mkdir -p build
    {{cp}} "{{zig_lib_dir}}/zig.h" build
    zig build-exe {{zigflags}} -ofmt=c -femit-bin=build/main.c src/main.zig
    {{docker}} run -v$PWD:/mnt {{image_tag}} ./build.sh

run:
    {{pcsx2}} {{bios}} -elf $PWD/build/main.elf

clean:
    rm -f src/headers.zig
    rm -rf build