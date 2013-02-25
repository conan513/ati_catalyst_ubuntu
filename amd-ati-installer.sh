#!/bin/sh
sudo apt-get install build-essential cdbs dh-make dkms execstack dh-modaliases linux-headers-generic &&
sudo apt-get install lib32gcc1 &&
mkdir ~/Catalyst && mkdir ~/Catalyst/13.2b6 &&
cd ~/Catalyst/13.2b6 &&

wget http://www2.ati.com/drivers/beta/amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.zip &&
unzip amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.zip &&
chmod +x amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.run &&
sudo sh ./amd-driver-installer-catalyst-13.2-beta6-linux-x86.x86_64.run --buildpkg Ubuntu/quantal &&
sudo dpkg -i fglrx*.deb &&
sudo aticonfig --initial -f &&

read -p "Press any key to close..."

