#!/usr/bin

function installYadm() {
  if [ ! -d ~/.yadm ]; then
    sudo apt install --yes yadm
    yadm clone https://github.com/anithri/dotfiles.git --no-bootstrap
    yadm remote set-url origin git@github.com:anithri/dotfiles.git
    yadm stash drop
    yadm decrypt
  fi
}