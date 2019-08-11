#!/bin/bash
#Step 1 make /BATOCERA writable---------------------------------
sleep 2s
filewebsite="https://raw.githubusercontent.com/RetroFlag/retroflag-picase/master"

mount -o remount, rw /BATOCERA
mount -o remount, rw /

#Step 3) Download Python script-----------------------------
mkdir /opt/RetroFlag
sleep 2s

script=/opt/RetroFlag/SafeShutdown.py

if [ -e $script ];
	then
		echo "Script SafeShutdown.py already exists. Doing nothing."
	else
		wget --no-check-certificate -O  $script "$filewebsite""/recalbox_SafeShutdown_gpi.py"
fi
#-----------------------------------------------------------

sleep 2s

#Step 4) Enable Python script to run on start up------------
DIR=/etc/init.d/S99RetroFlag

if grep -q "python $script &" "S99RetroFlag";
	then
		if [ -x $DIR];
			then 
				echo "Executable S99RetroFlag already configured. Doing nothing."
			else
				chmod +x $DIR
		fi
	else
		echo "python $script &" >> $DIR
		chmod +x $DIR
		echo "Executable S99RetroFlag configured."
fi
#-----------------------------------------------------------

#Step 5) Apply changes----------------------------
echo "RetroFlag Pi Case Switch installation done. Saving changes."

/recalbox/scripts/recalbox-save-overlay.sh

echo "RetroFlag Pi Case Switch installation done. Will now reboot after 4 seconds."
sleep 4
reboot

#-----------------------------------------------------------

