#!/bin/bash
export SUDO_ASKPASS="/usr/lib/zenity/ask-password.sh"
sudo -A echo ok
(
echo "#cheacking for update" ; sleep 1
echo "10"; sleep 1 
echo "50" ; sleep 1
echo "100" ; sleep 1
echo "#installing update"
cd /var/cache/delevery-updates/ggs/caches/updates
git clone https://github.com/kainatquaderee/binary-tweaks-app.git
git clone https://github.com/kainatquaderee/binary-os-desktop-setup.git
git clone https://github.com/kainatquaderee/binary-os-backgrounds.git
git clone https://github.com/kainatquaderee/binary-os-themes-icons-theme-.git 
git clone https://github.com/kainatquaderee/binary-os-shell-extensions.git
git clone https://github.com/kainatquaderee/binary-os-updater.git
git clone https://github.com/kainatquaderee/Binary-desktop.git
git clone https://github.com/kainatquaderee/binary-commands.git
/usr/lib/updater/download-update/updates/update-desktop-setup.sh
echo "25" ;sleep 1 
/usr/lib/updater/download-update/updates/update-desktop-themes.sh
echo "50" ;sleep 1 
/usr/lib/updater/download-update/updates/install-update.sh
echo "60" ;sleep 1 
/usr/lib/updater/download-update/updates/shell-extensions.sh
echo "75" ;sleep 1 
/usr/lib/updater/download-update/updates/update-backgrounds.sh
/usr/lib/updater/download-update/updates/binary-tweak-update.sh
/usr/lib/updater/download-update/updates/font-update.sh
/usr/lib/updater/download-update/updates/binary-desktop-install.sh
/usr/lib/updater/download-update/updates/update-binary-command.sh
echo "90" ;sleep 1 
echo "#update done" ; sleep 1
sudo -A apt update && sudo -A apt upgrade 
) |
zenity --progress \
  --title="" \
  --text="" \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi
