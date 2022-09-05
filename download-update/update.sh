#!/bin/bash
cd ~/.local/share/ggs/download-update
(
echo "#cheacking for update" ; sleep 1
echo "10"; sleep 1 
echo "50" ; sleep 1
echo "100" ; sleep 1
echo "#installing update"
./updates/update-desktop-setup.sh
echo "25" ;sleep 1 
./updates/update-desktop-themes.sh
echo "50" ;sleep 1 
./updates/install-update.sh
echo "60" ;sleep 1 
./updates/shell-extensions.sh
echo "75" ;sleep 1 
./updates/update-backgrounds.sh
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
