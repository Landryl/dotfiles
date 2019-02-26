#!/bin/bash
. ~/.config/config-themes/config
bash ~/.config/config-themes/$CONFIGTHEME/shellcolors.sh

function theme() {
  echo "CONFIGTHEME=$1" > ~/.config/config-themes/config
  bash ~/.config/config-themes/$CONFIGTHEME/shellcolors.sh
  i3-msg restart
}
