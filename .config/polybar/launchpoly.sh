#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar primario >>/tmp/poly-prim.log 2>&1 & disown
polybar secondario >>/tmp/poly-sec.log 2>&1 & disown

echo "Bars launched..."
