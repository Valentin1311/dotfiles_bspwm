#!/bin/bash

# Get the ID of the currently focused node
focused_node=$(bspc query -N -n)

# Get the current monitor of the focused window
current_monitor=$(bspc query -M -m focused --names)

# Get all monitors
monitors=($(bspc query -M --names))

# Determine the target monitor (assuming only two monitors)
target_monitor=${monitors[0]}
if [ "$target_monitor" == "$current_monitor" ]; then
    target_monitor=${monitors[1]}
fi

# Move the focused window to the target monitor
bspc node focused -m $target_monitor

# Focus on the moved window
bspc node $focused_node -f