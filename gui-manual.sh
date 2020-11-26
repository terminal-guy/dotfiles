#!/bin/sh

manual=$(apropos -s ${SECTION:-''} ${@:-.} | \
    grep -v -E '^.+ \(0\)' |\
    awk '{print $2 "    " $1}' | \
    sort | \
    dmenu -l 8  -bw 3 -g 2 -i -p "  : " | \
    sed -E 's/^\((.+)\)/\1/')

if [ -z "$MANUAL" ]; then
  man -T${FORMAT:-pdf} $manual | ${READER:-zathura -}
fi
