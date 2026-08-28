#!/bin/bash

if [[ -z $(pgrep "wpets") ]]; then
  wpets --watch-config --config ~/.config/bongocat/bongocat.conf &
else
  killall -9 wpets
fi
