#!/bin/bash
VM_DISK_PATH=$1
PATH_TO_IGN=$2

qemu-system-x86_64 -machine accel=kvm -m 2048 -cpu host -nographic \
	-drive if=virtio,file=${VM_DISK_PATH} \
	-device virtio-rng-pci \
	-fw_cfg name=opt/com.coreos/config,file=${PATH_TO_IGN}