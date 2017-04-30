# docker-raspbian_qemu
Raspbian tweaked to have qemu emulation capability - fixed to not-latest version

IMPORTANT:
Have a look out for ````git config core.autocrlf```` -> needs to be false, and Dockerfiles need to have LF ending (Unix Style), otherwise hub.docker.com will not build correctly!

FORKED FROM: https://github.com/tsuckow/rpi-raspbian-qemu 

UPDATER for qemu FROM: https://github.com/b4tman/armhf-alpine-qemu
