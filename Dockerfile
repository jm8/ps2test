FROM ghcr.io/ps2dev/ps2sdk@sha256:71791dae5c9dc71ba6df046cef1850964f119eb5e440ddba84008b67274ec3a8
RUN apk add gmp mpc1 mpfr build-base git

WORKDIR /mnt
CMD /bin/sh
