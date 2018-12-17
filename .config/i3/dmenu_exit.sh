#!/usr/bin/env bash
OPTION=$(echo "ignore
exit
shutdown" | dmenu)
if [ $OPTION = 'exit' ]
then
  i3-msg exit
fi
if [ $OPTION = 'shutdown' ]
then
  poweroff
fi
