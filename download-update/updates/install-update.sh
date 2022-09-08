#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/binary-os-updater
git pull 
cp -r ./download-update /usr/lib/updater
#cp -r ./binary-software-updater.desktop ~/.config/autostart
cp -r ./binary-software-updater.desktop ~/.local/share/applications
