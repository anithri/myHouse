#!/bin/bash

KEYRING_URL=http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb
KEYRING_PATH=/tmp/keyring.deb
KEY=SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416

I3_DEB="deb http://debian.sur5r.net/i3/ $(grep ^DISTRIB_CODENAME= /etc/lsb-release | cut -f2 -d=) universe"
I3_LIST=/etc/apt/sources.list.d/sur5r-i3.list

function installI3wm() {
  if [ ! -e /etc/apt/sources.list.d/sur5r-i3.list ]; then
    /usr/lib/apt/apt-helper download-file $(KEYRING_URL) $(KEYRING_PATH) $(KEY)

    sudo dpkg -i $(KEYRING_PATH)
    sudo sh -c "echo \"$(I3_DEB)\" > $(I3_LIST)"
    sudo apt install --yes i3
  fi
}
