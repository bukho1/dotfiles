#!/bin/bash
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

sleep 0.1
MUTE=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -c MUTED)
echo $MUTE > /sys/class/leds/platform::micmute/brightness

swayosd-client --input-volume mute-toggle
