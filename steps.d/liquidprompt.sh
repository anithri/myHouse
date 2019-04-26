#!/bin/bash

LIQUIDPROMPT_URL=https://github.com/nojhan/liquidprompt.git

function installLiquidprompt() {
  if [ ! -d ~/.oh-my-zsh/plugins/liquidprompt ]; then
    git clone $(LIQUIDPROMPT_URL) ~/.oh-my-zsh/plugins/liquidprompt
  fi

  if [ ! -d ~/Tools/liquidprompt ]; then
    git clone $(LIQUIDPROMPT_URL) ~/Tools/liquidprompt
  fi
}
