#!/bin/bash

function installOhMyZsh() {
  if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  fi
}
