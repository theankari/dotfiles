#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
TRAY_POS=right MONITOR=eDP polybar example &
MONITOR=HDMI1 polybar example &
MONITOR=DisplayPort-0 polybar example &
MONITOR=LVDS-1 polybar example &
MONITOR=DP-1 polybar example &
MONITOR=DP-2 polybar example &
MONITOR=DP-3 polybar example &


echo "Bars launched..."
