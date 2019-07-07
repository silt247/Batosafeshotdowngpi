# retroflag-gpi case (gpi case only)
Turn switch "SAFE SHUTDOWN" to ON.

For Batocera

1. Make sure internet connected.
2. Make sure keyboard connected.
3. Press F4 first. And then press ALT-F2 enter termial.
4. User: root Password: linux
5. In the terminal, type the one-line command below(Case sensitive):

wget -O - "https://raw.githubusercontent.com/silt247/Batosafeshotdowngpi/master/Batocera_install_gpi.sh" | bash


Note: 
I Install the sript via PuTTy using windows pc

1. make sure PC and GPI case are conected to your WIFI ( must have an internet conection)
2. Open PuTTy, enter GPI-CASE ip address and hit open tab
3. loging   user: root  hit enter 
4. password: linux  hit enter 
5. enter command below 
wget -O - "https://raw.githubusercontent.com/silt247/Batosafeshotdowngpi/master/Batocera_install_gpi.sh" | bash
6. hit enter 
7. you should see script being install and GPI CASE should reboot.

NOTE: Switch behind battery case must be on and GPI CASE must be ON for at least 30 seconds before shutting it down.




