#!/bin/bash
if hyprctl clients -j | jq -r '.[].class' | grep -qi "zen"; then
  hyprctl dispatch 'hl.dsp.focus({ window = "class:zen" })'
else
  zen-browser & > /dev/null
fi
