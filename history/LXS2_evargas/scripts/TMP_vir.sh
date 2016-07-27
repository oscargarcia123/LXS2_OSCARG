#!/bin/bash

virt-install \
    --connect qemu:///system \
    --name bitsu \
    -r 4096 \
    --hvm \
    --disk path=/srv/servidores/bitsu.img,size=30 \
    --cdrom /home/rid/tools/ubuntu-14.04-server-64.iso \
    --network bridge=br97 \
    --graphics vnc \
    --accelerate
