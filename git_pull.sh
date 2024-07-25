#!/bin/bash
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
git pull
chmod -R 755 *.sh
