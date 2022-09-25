#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/binary-os-backgrounds
echo $password | sudo -S  git pull
source /var/cache/delevery-updates/ggs/caches/updates/binary-os-backgrounds/install.sh
