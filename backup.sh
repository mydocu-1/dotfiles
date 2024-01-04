#!/bin/bash

readonly DIR="$(realpath $(dirname $0))"

cd "${DIR}"

git add -A
git commit -m "Auto backup $(date --rfc-3339=seconds)"
git push
