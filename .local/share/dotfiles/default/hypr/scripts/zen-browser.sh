#!/bin/bash
if hyprctl clients -j | jq -r '.[].class' | grep -qi "zen"; then
  hyprctl dispatch focuswindow class:zen > /dev/null
else
  zen-browser & > /dev/null
fi
