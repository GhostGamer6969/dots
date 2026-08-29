#!/bin/bash
if hyprctl clients -j | jq -r '.[].title' | grep -qi "rmpc"; then
  hyprctl dispatch focuswindow title:rmpc > /dev/null
else
  # ghostty -e rmpc & > /dev/null
  ghostty --class=local.floating_wide -e rmpc & > /dev/null
fi
