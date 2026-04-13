#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
sleep 1
polybar noctavia 2>&1 | tee -a /tmp/polybar.log & disown
