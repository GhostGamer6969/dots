#!/bin/bash

window=$(hyprctl clients -j | jq -r '
  .[]
  | select(.class | ascii_downcase | contains("ghostty"))
  | select(.title | ascii_downcase | contains("rmpc") | not)
  | .address
' | head -n1)

if [ -n "$window" ]; then
    hyprctl dispatch focuswindow address:$window
else
    ghostty >/dev/null 2>&1 &
fi
