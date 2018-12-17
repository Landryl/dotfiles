#!/bin/bash

PLAYING="$(mpc current)"
STATUS="$(mpc | grep -o "\[.*\]")"
BATTERY="$(cat /sys/class/power_supply/BAT0/capacity)"
BATTERY_STATUS="$(cat /sys/class/power_supply/BAT0/status)"

if [ $STATUS = "[paused]" ]; then
  echo -ne "(paused) "
fi

if [ -n "$PLAYING" ]; then
  echo -ne "Now playing #[fg=colour1]$PLAYING#[fg=colour7] | "
fi


if (( $BATTERY < 20 )); then
  echo -ne "#[bg=colour1,fg=colour0] "
  if [ $BATTERY_STATUS = "Charging" ]; then
    echo -ne "+"
  fi
  echo "$BATTERY% #[bg=colour0,fg=colour7] | "
else
  if [ $BATTERY_STATUS = "Charging" ]; then
    echo -ne "+"
  fi
  echo -ne "$BATTERY% | "
fi
