FROM resin/rpi-raspbian:jessie-20170816

ENV QEMU_EXECVE 1

COPY qemu-arm-static /usr/bin
COPY resin-xbuild /usr/bin

RUN [ "/usr/bin/qemu-arm-static", "/bin/sh", "-c", "ln -s /usr/bin/resin-xbuild /usr/bin/cross-build-start; ln -s /usr/bin/resin-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real" ]

