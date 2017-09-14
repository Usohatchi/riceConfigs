#!/bin/bash

#Import color
. "${HOME}/.cache/wal/colors.sh"

( source $HOME/bash/makebar.sh | $HOME/lemonbar/lemonbar -b -g 440x40+1700+30 -f Unique-12 -p -B "#00000000" -F $color7 -d)
