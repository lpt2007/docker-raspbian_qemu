FROM resin/rpi-raspbian:jessie-20170426

ENV QEMU_EXECVE 1

COPY qemu-arm-static /usr/bin
COPY resin-xbuild /usr/bin

RUN ["chmod","+x","/usr/bin/qemu-arm-static"]

RUN [ "/usr/bin/qemu-arm-static", "/bin/sh", "-exc", "ln -s resin-xbuild /usr/bin/cross-build-start; ln -s resin-xbuild /usr/bin/cross-build-end; mv /bin/sh /bin/sh.real; ln -s /bin/sh.real /bin/sh" ]

