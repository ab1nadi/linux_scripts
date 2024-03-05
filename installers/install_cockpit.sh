#!/bin/bash

apt update

# install kvm 
apt -y install bridge-utils cpu-checker libvirt-clients libvirt-daemon qemu qemu-kvm

# get version environment variables
. /etc/os-release

# install cockpit
apt install -t ${VERSION_CODENAME}-backports cockpit

# install cockpit applications
apt install -t ${VERSION_CODENAME}-backports cockpit-storaged

apt install -t ${VERSION_CODENAME}-backports cockpit-networkmanager

apt install -t ${VERSION_CODENAME}-backports cockpit-packagekit

apt install -t ${VERSION_CODENAME}-backports cockpit-virtual-machines

apt install -t ${VERSION_CODENAME}-backports cockpit-podman


echo "Done"


 