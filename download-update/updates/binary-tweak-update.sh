#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/binary-tweaks-app
echo $password | sudo -S  git pull
. ./install.sh
