#!/bin/sh
set -e

wget http://archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz
mkdir -p system
bsdtar -xpf ArchLinuxARM-aarch64-latest.tar.gz -C system
rm ArchLinuxARM-aarch64-latest.tar.gz
docker build -t aurorafw/archlinux-armhf .
rm -rf system