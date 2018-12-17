#!/bin/bash
PLAYING="$(mpc current)"
if [ -n "$PLAYING" ]
  then
  echo "Now playing"
fi
  
