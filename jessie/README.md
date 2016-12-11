JESSIE:20161202

Using the technique from:
https://github.com/resin-io-projects/armv7hf-debian-qemu

Wrap your build steps to taint the environment with qemu allowing building on x86_64.
```
RUN [ "cross-build-start" ]
RUN echo do buid steps here
RUN [ "cross-build-end" ]
```

This leaves the container as a pure ARM container that could be pulled on a raspberry pi

You can get a bash shell with:
```
sudo docker run -it --entrypoint=/usr/bin/qemu-arm-static nmaas87/docker-raspbian_qemu:jessie-20161202 /bin/bash
```

FORKED FROM: https://github.com/tsuckow/rpi-raspbian-qemu