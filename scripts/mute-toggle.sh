#!/bin/sh
swayosd-client --output-volume mute-toggle
MUTED=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -c yes)
echo $MUTED | tee /sys/class/leds/platform::mute/brightness
