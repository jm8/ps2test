FROM ghcr.io/ps2dev/ps2sdk:latest
RUN apk add gmp mpc1 mpfr build-base git

WORKDIR /mnt
CMD /bin/sh