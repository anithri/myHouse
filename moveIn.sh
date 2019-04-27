#!/bin/bash

for f in ./steps.d/*; do source $f; done

installAptPackages
arrangeHomeDir
installYadm
installAsdf
installOhMyZsh
installLiquidprompt
installI3wm
installPolybar
#installPostgres
