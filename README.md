# docker-raspbian_qemu
Raspbian tweaked to have qemu emulation capability - fixed to not-latest version

IMPORTANT:
Have a look out for ````git config core.autocrlf```` -> needs to be false, and Dockerfiles need to have LF ending (Unix Style), otherwise hub.docker.com will not build correctly!

Common Errors:
executable file not found in $PATH
Step 5/5 : RUN qemu-arm-static /bin/sh -c ln -s resin-xbuild /usr/bin/cross-build-start; ln -s resin-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real
oci runtime error: container_linux.go:262: starting container process caused "exec: \"qemu-arm-static\": executable file not found in $PATH"
-> qemu not found, probably error in file encoding (use linux and vi ;))

permission denied
Step 5/5 : RUN /usr/bin/qemu-arm-static /bin/sh -c ln -s /usr/bin/resin-xbuild /usr/bin/cross-build-start; ln -s /usr/bin/resin-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real
oci runtime error: container_linux.go:262: starting container process caused "exec: \"/usr/bin/qemu-arm-static\": permission denied"
-> qemu-arm-static / resin-xbuild have no chmod +x rights ;)

FORKED FROM: https://github.com/tsuckow/rpi-raspbian-qemu 

UPDATER for qemu FROM: https://github.com/b4tman/armhf-alpine-qemu
