#!/bin/bash
if hyprctl clients -j | jq -r '.[].class' | grep -qi "obsidian"; then
  hyprctl dispatch focuswindow class:obsidian > /dev/null
else
  obsidian & > /dev/null
fi
