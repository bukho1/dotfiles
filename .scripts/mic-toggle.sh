#!/bin/bash
swayosd-client --input-volume mute-toggle

# Sync LED to actual mute state
MUTED=$(pactl get-source-mute @DEFAULT_SOURCE@ | grep -c "yes")
echo $MUTED > /sys/class/leds/platform::micmute/brightness
