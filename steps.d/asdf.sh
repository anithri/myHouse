#!/bin/bash

function installAsdf() {
  if [ ! -d ~/.asdf ]; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
    asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

    asdf install nodejs 10.15.3
    asdf global nodejs 10.15.3

    asdf install ruby 2.5.1
    asdf global nodjs 2.5.1

    asdf install ruby 2.4.1
    asdf install ruby 2.3.1
  fi
}
