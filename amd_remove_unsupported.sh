#!/bin/sh
DRIVER=`find /usr/lib -name fglrx_drv.so`

echo "Come on AMD!"

for token in $DRIVER;do
	echo "Removing AMD logo from "$token

	for x in $(objdump -d $DRIVER|awk '/call/&&/EnableLogo/{print "\\x"$2"\\x"$3"\\x"$4"\\x"$5"\\x"$6}'); do
		sed -i "s/$x/\x90\x90\x90\x90\x90/g" $DRIVER
	done
done

echo "Reboot computer to finish"



