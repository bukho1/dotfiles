#!/bin/bash
mode=$(cat ~/.cache/perf-mode 2>/dev/null || echo "auto")
case "$mode" in
    powersave)
        next="auto"
        label="Balanced (Auto)"
        sudo auto-cpufreq --force=reset
        ;;
    auto)
        next="performance"
        label="Performance"
        sudo auto-cpufreq --force=performance
        ;;
    performance)
        next="powersave"
        label="Power Saver"
        sudo auto-cpufreq --force=powersave
        ;;
    *)
        next="auto"
        label="Balanced (Auto)"
        sudo auto-cpufreq --force=reset
        ;;
esac
echo "$next" > ~/.cache/perf-mode
notify-send -a "System" "Power Profile" "Switched to $label" -t 2000
