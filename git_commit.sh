#!/bin/bash
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
git add .
git diff --stat --cached
read -t 5 -r -s -p $'Wait 5 seconds or press enter to continue...'
echo ""
git commit -am "update from ${HOSTNAME}"
git push
