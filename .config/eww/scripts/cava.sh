#!/bin/bash

cava -p ~/.config/eww/cava | while IFS= read -r line; do
    echo "$line" | awk -F';' '
    {
        printf "["
        for (i = 1; i <= NF; i++) {
            if ($i != "")
                printf "%s%s", (i > 1 ? "," : ""), $i
        }
        print "]"
    }'
done
