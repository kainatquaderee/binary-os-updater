#!/bin/bash
echo "#cheacking for update" ; sleep 1
echo "10"; sleep 1 
echo "50" ; sleep 1
echo "100" ; sleep 1
echo "#installing update"
./updates/update-desktop-setup.sh
echo "25" ;sleep 1 
./updates/update-desktop-themes.sh
echo "26" ;sleep 1 


