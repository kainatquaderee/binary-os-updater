#!/bin/bash
cd /var/cache/delevery-updates/ggs/caches/updates/Binary-desktop/
git pull
cd binary-desktop
apt install binary-desktop_1%3a42+3_amd64..deb
