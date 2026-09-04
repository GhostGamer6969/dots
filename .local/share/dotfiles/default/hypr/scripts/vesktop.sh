#!/bin/bash
if hyprctl clients -j | jq -r '.[].class' | grep -qi "vesktop"; then
  hyprctl dispatch 'hl.dsp.focus({ workspace = "5" })' > /dev/null
else
  vesktop & > /dev/null
fi
