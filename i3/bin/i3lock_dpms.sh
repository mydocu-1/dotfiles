#!/bin/sh

# prevent sequential executions
[[ -n "(pidof -x $0)" ]] || exit

readonly LOCK="${HOME}/.config/i3/bin/lock.png"
readonly IMG="$(mktemp --suffix=.png)"

scrot --silent -o -q 1 "${IMG}"
convert "${IMG}" -scale 10% -scale 1000% "${IMG}"
convert "${IMG}" "${LOCK}" -gravity center -composite -matte "${IMG}"

xset s off dpms 0 10 0
i3lock --color=111111 -i "${IMG}" --ignore-empty-password --show-failed-attempts --nofork
xset s off -dpms

