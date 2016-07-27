#!/bin/bash

virt-install \
    --connect qemu:///system \
    --name cnts00 \
    -r 512 \
    --hvm \
    --disk path=/srv/servidores/cnts00.img,size=5 \
    --cdrom /home/sysadmin/Downloads/CentOS-7-x86_64-Minimal-1511.iso \
    --network network=default \
    --graphics vnc \
    --accelerate
