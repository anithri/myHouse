#!/bin/bash

function installLiquidprompt() {
  if [ ! -d ~/.oh-my-zsh/plugins/liquidprompt ]; then
    git clone https://github.com/nojhan/liquidprompt.git ~/.oh-my-zsh/plugins/liquidprompt
  fi

  if [ ! -d ~/Tools/liquidprompt ]; then
    git clone https://github.com/nojhan/liquidprompt.git ~/Tools/liquidprompt
  fi
}
