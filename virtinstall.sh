#!/bin/bash
set -x
virt-install \
    --name centos-6-x86_64 \
    --ram 1024 \
    --cpu host \
    --vcpus 1 \
    --nographics \
    --os-type=linux \
    --os-variant=rhel6 \
    --location=http://mirrors.kernel.org/centos/6/os/x86_64 \
    --initrd-inject=centos-6-x86_64.ks \
    --extra-args="ks=file:/centos-6-x86_64.ks text console=tty0 utf8 console=ttyS0,115200" \
    --disk path=images/centos-6-x86_64.img,size=2,bus=virtio \
    --force \
    --noreboot
