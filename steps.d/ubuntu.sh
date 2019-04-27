#!/bin/bash

function installAptPackages() {
  sudo apt update
  sudo apt upgrade --yes
  sudo apt install -y wget ca-certificates git curl tree ack build-essential \
                           dirmngr gpg openssh-client openssh-server autoconf \
                           bison libssl-dev libyaml-dev libreadline6-dev \
                           zlib1g-dev libncurses5-dev libffi-dev libgdbm5 \
                           libgdbm-dev zsh direnv \
                           autojump ubuntu-drivers-common mesa-utils \
                           mesa-utils-extra gnupg numlockx xautolock scrot \
                           wget unzip wpasupplicant lightdm \
                           xautolock rofi dmenu
}
