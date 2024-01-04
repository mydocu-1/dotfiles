#!/bin/bash

if mark="$(i3-msg -t get_marks | sed -n -e  's/\[\(.\+\)\]/\1/g;s/,/\n/g;s/"\([^"]\+\)"/\1/g;p' | dmenu -p 'Marks:')" ; then
  i3-msg "[con_mark=${mark}] focus"
fi

