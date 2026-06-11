#!/bin/sh
swayosd-client --input-volume mute-toggle
MUTED=$(pactl get-source-mute @DEFAULT_SOURCE@ | grep -c yes)
echo $MUTED | tee /sys/class/leds/platform::micmute/brightness
