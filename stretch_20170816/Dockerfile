FROM resin/rpi-raspbian:stretch-20170816

ENV QEMU_EXECVE 1

COPY qemu-arm-static /usr/bin
COPY resin-xbuild /usr/bin

RUN [ "qemu-arm-static", "/bin/sh", "-c", "ln -s resin-xbuild /usr/bin/cross-build-start; ln -s resin-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real" ]

