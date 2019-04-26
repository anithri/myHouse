#!/bin/bash

function installPolybar() {
  if [ ! -d ~/Tools/polybar ]; then
    git clone https://github.com/jaagr/polybar.git ~/Tools/polybar
  fi

  if [ ! -d ~/Tools/polybar-scripts ]; then
    git clone https://github.com/x70b1/polybar-scripts.git ~/Tools/polybar-scripts
  fi
}