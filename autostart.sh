#!/bin/bash

while true; do
        xsetroot -name "$(~/.dwm/scripts/statusbar.sh)"
        sleep 2
done &
nitrogen --restore
