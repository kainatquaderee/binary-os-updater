#!/bin/bash
(
echo "#cheacking for update" ;sleep 5

echo "#installing update"
mkdir -p /var/cache/delevery-updates/ggs/caches/updates
cd /var/cache/delevery-updates/ggs/caches/updates
git clone https://github.com/kainatquaderee/binary-tweaks-app.git
git clone https://github.com/kainatquaderee/binary-os-desktop-setup.git
git clone https://github.com/kainatquaderee/binary-os-backgrounds.git
git clone https://github.com/kainatquaderee/binary-os-themes-icons-theme-.git 
git clone https://github.com/kainatquaderee/binary-os-shell-extensions.git
git clone https://github.com/kainatquaderee/binary-os-updater.git
git clone https://github.com/kainatquaderee/Binary-desktop.git
git clone https://github.com/kainatquaderee/binary-commands.git
git clone https://github.com/kainatquaderee/binary-base-files.git
git clonehttps://github.com/kainatquaderee/binary-os-fonts-roboto-.git
git clone https://github.com/kainatquaderee/binary-plymouth-theme.git
git clone https://github.com/kainatquaderee/binary-os-release-upgrader.git
/usr/lib/updater/download-update/updates/update-desktop-setup.sh
echo "installing binary-theme" ;sleep 1 
/usr/lib/updater/download-update/updates/update-desktop-themes.sh
echo "50" ;sleep 1 
/usr/lib/updater/download-update/updates/install-update.sh
echo "60" ;sleep 1 
/usr/lib/updater/download-update/updates/shell-extensions.sh
echo "75" ;sleep 1 
/usr/lib/updater/download-update/updates/update-backgrounds.sh
/usr/lib/updater/download-update/updates/binary-tweak-update.sh
/usr/lib/updater/download-update/updates/font-update.sh
/usr/lib/updater/download-update/updates/binary-os-release-upgrader.sh
/usr/lib/updater/download-update/updates/binary-plymouth-theme.sh
/usr/lib/updater/download-update/updates/binary-base-files.sh
/usr/lib/updater/download-update/updates/binary-desktop-install.sh
/usr/lib/updater/download-update/updates/binary-commands-install.sh
echo "90" ;sleep 1 
echo "#update done" ; sleep 1
/usr/bin/update-manager
)
