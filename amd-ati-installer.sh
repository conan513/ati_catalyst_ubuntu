#!/bin/sh
sudo apt-get install cdbs dh-make dkms execstack dh-modaliases linux-headers-generic libqtgui4 &&
sudo apt-get install lib32gcc1 &&
mkdir ~/Catalyst && mkdir ~/Catalyst/13.12 &&
cd ~/Catalyst/13.12 &&

wget --referer='http://support.amd.com/en-us/download/desktop?os=Linux+x86' http://www2.ati.com/drivers/linux/amd-catalyst-13.12-linux-x86.x86_64.zip &&
unzip amd-catalyst-13.12-linux-x86.x86_64.zip &&
chmod +x amd-catalyst-13.12-linux-x86.x86_64.run &&
sudo sh ./amd-catalyst-13.12-linux-x86.x86_64.run --buildpkg Ubuntu/saucy &&
sudo dpkg -i fglrx*.deb &&
sudo aticonfig --initial -f &&

read -p "Press any key to close..."

