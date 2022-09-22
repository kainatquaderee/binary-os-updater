#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/binary-os-backgrounds
echo $password | sudo -S  git pull
. /var/cache/delevery-updates/ggs/caches/updates/binary-os-backgrounds/install.sh
