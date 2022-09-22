#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/binary-os-shell-extensions
echo $password | sudo -S  git pull
. ./install.sh
