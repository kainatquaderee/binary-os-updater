#!/bin/bash
mkdir -p /var/cache/delevery-updates/ggs/caches/updates
mkdir -p /usr/lib/updater
cp -r ./download-update /usr/lib/updater
cp -r ./binary-software-updater.desktop ~/.local/share/applications
sudo cp ./update-launcher-dx.sh /opt
cd /var/cache/delevery-updates/ggs/caches/updates
git clone https://github.com/kainatquaderee/binary-os-desktop-setup.git
git clone https://github.com/kainatquaderee/binary-os-backgrounds.git
git clone https://github.com/kainatquaderee/binary-os-themes-icons-theme-.git 
git clone https://github.com/kainatquaderee/binary-os-shell-extensions.git
git clone https://github.com/kainatquaderee/binary-os-updater.git
