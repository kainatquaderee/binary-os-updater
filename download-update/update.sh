#!/bin/bash
password=`zenity --password`
echo $password | sudo -S echo ok
(
echo "#cheacking for update" ; sleep 1
echo "10"; sleep 1 
echo "50" ; sleep 1
echo "100" ; sleep 1
echo "#installing update"
echo $password | sudo -S mkdir -p /var/cache/delevery-updates/ggs/caches/updates
cd /var/cache/delevery-updates/ggs/caches/updates
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-tweaks-app.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-desktop-setup.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-backgrounds.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-themes-icons-theme-.git 
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-shell-extensions.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-updater.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/Binary-desktop.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-commands.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-base-files.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-fonts-roboto-.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-plymouth-theme.git
echo $password | sudo -S git clone https://github.com/kainatquaderee/binary-os-release-upgrader.git
echo $password | sudo -S /usr/lib/updater/download-update/updates/update-desktop-setup.sh
echo "25" ;sleep 1 
source /usr/lib/updater/download-update/updates/update-desktop-themes.sh
echo "50" ;sleep 1 
echo $password | sudo -S /usr/lib/updater/download-update/updates/install-update.sh
echo "60" ;sleep 1 
source /usr/lib/updater/download-update/updates/shell-extensions.sh
echo "75" ;sleep 1 
source /usr/lib/updater/download-update/updates/update-backgrounds.sh
source /usr/lib/updater/download-update/updates/binary-tweak-update.sh
echo $password | sudo -S /usr/lib/updater/download-update/updates/font-update.sh
echo $password | sudo -S /usr/lib/updater/download-update/updates/binary-os-release-upgrader.sh
echo $password | sudo -S /usr/lib/updater/download-update/updates/binary-plymouth-theme.sh
echo $password | sudo -S /usr/lib/updater/download-update/updates/binary-base-files.sh
echo $password | sudo -S /usr/lib/updater/download-update/updates/binary-desktop-install.sh
echo $password | sudo -S /usr/lib/updater/download-update/updates/binary-commands-install.sh
echo "90" ;sleep 1 
echo "#update done" ; sleep 1
/usr/bin/update-manager
) |
zenity --progress \
  --title="" \
  --text="" \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi
