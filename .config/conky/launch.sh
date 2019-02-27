#!/usr/bin/env sh

# Terminate already running bar instances
killall -q conky

# Wait until the processes have been shut down
while pgrep -u $UID -x conky >/dev/null; do sleep 1; done

conky -c ~/.config/config-themes/conky.conf &
