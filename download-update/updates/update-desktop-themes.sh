#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/binary-os-themes-icons-theme-
echo $password | sudo -S  git pull
. ./icons-and-themes/install.sh
