#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:inactive_opacity 1;\
        keyword decoration:dim_inactive false;\
        keyword decoration:dim_active false;\
        keyword decoration:blur:enabled false;\
        keyword decoration:shadow:enabled false;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 0;\
        keyword decoration:rounding 0"
    exit
fi
hyprctl reload
