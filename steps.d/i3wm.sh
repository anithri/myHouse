#!/bin/bash

function installI3wm() {
  if [ ! -e /etc/apt/sources.list.d/sur5r-i3.list ]; then
    /usr/lib/apt/apt-helper download-file \
     http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb \
     /tmp/keyring.deb

    sudo dpkg -i /tmp/keyring.deb
    sudo sh -c "echo \"deb http://debian.sur5r.net/i3/ $(grep ^DISTRIB_CODENAME= /etc/lsb-release | cut -f2 -d=) universe\" > /etc/apt/sources.list.d/sur5r-i3.list"
    sudo apt install --yes i3
  fi
}
