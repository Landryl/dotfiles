#!/bin/bash
source $HOME/.config/config-themes/config
source $HOME/.config/config-themes/$CONFIGTHEME/shellcolors.sh

function theme() {
  if [ -d "$HOME/.config/config-themes/$1/" ]; then
    echo "CONFIGTHEME=$1" > ~/.config/config-themes/config
    source $HOME/.config/config-themes/shellhook.sh
    i3-msg restart
    return 0
  else
    echo "Error: unknown theme $1"
    return 1
  fi
}
