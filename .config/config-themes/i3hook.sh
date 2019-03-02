#!/bin/bash
# This script is called at the end of i3 config file, usefull to trigger "final touches"
source $HOME/.config/config-themes/config
feh --bg-fill $HOME/.config/config-themes/$CONFIGTHEME/wallpaper.png
