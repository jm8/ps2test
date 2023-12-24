FROM ghcr.io/ps2dev/ps2sdk:latest
RUN apk add gmp mpc1 mpfr build-base

WORKDIR /zig
RUN wget https://ziglang.org/builds/zig-linux-x86_64-0.12.0-dev.1849+bb0f7d55e.tar.xz
RUN tar xf zig-linux-x86_64-0.12.0-dev.1849+bb0f7d55e.tar.xz

ENV PATH="${PATH}:/zig/zig-linux-x86_64-0.12.0-dev.1849+bb0f7d55e"

WORKDIR /mnt
CMD /bin/sh