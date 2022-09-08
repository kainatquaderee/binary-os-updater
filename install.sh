#!/bin/bash
sudo mkdir -p /var/cache/delevery-updates/ggs/caches/updates
sudo chmod -R 777  /var/cache/delevery-updates
sudo mkdir -p /usr/lib/updater
sudo chmod -R 777 /usr/lib/updater
sudo chmod -R 777 /usr/share/themes
sudo chmod -R 777 /usr/share/icons
sudo chmod -R 777 /usr/libexec/gos
sudo chmod -R -777 /usr/libexec/initial-setup
sudo chmod -R -777 /usr/share/backgrounds
sudo chmod -R -777 /usr/share/gnome-background-properties
sudo chmod -R -777 /usr/share/pixmaps
sudo chmod -R -777 /usr/share/plymouth
mkdir
cp -r ./download-update /usr/lib/updater
cp -r ./binary-software-updater.desktop ~/.local/share/applications
sudo cp ./update-launcher-dx.sh /opt
cd /var/cache/delevery-updates/ggs/caches/updates
git clone https://github.com/kainatquaderee/binary-os-desktop-setup.git
git clone https://github.com/kainatquaderee/binary-os-backgrounds.git
git clone https://github.com/kainatquaderee/binary-os-themes-icons-theme-.git 
git clone https://github.com/kainatquaderee/binary-os-shell-extensions.git
git clone https://github.com/kainatquaderee/binary-os-updater.git
