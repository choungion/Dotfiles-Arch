#!/bin/bash
export LIBVIRT_DEFAULT_URI="qemu:///system"

/usr/bin/virsh start win10
/usr/bin/virt-viewer -f -a win10
