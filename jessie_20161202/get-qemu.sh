#!/bin/sh -ex

QEMU_VERSION="2.7.0-resin-rc3" QEMU_TARGET="arm"
QEMU_SHA256="474263efd49ac9fe10240d0362c66411e124b5b80483bec7707efb9490c8c974"
QEMU_URL="https://github.com/resin-io/qemu/releases/download/qemu-${QEMU_VERSION}-${QEMU_TARGET}/qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz"

curl -SL  $QEMU_URL -o qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz
echo "${QEMU_SHA256}  qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz" > qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz.sha256sum
sha256sum -c qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz.sha256sum
rm -f qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz.sha256sum

rm -f qemu-${QEMU_TARGET}-static
tar --strip 1 -xzf qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz
rm -f qemu-${QEMU_VERSION}-${QEMU_TARGET}.tar.gz
