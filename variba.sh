#!/bin/bash
clear
#set superusers="poka"
#password_pbkdf2 poka grub.pbkdf2.sha512.10000.9D014966A9B23998FE0289BE0C050DE54>
#Exec= /home/poka/mame0240s/./poker /home/poka/roms/pex0447p.zip -skip_gameinfo
#ExecStart=-/sbin/aggety --noissue --autologin poka --noclear %I TERM
#--------------------------------------------
mymac=$(cat /sys/class/net/enp4s0/address) #direccin mac pc b8:97:5a:7c:12:60
if [[  $mymac == 'b8:97:5a:72:14:13' ]]
then
    echo '!!!Bienvenido Poker DRAW!!! ' #$mymac
    Exec= /home/poka/mame0240s/./poker /home/poka/roms/pex0447p.zip -skip_gameinfo 
else
    sudo rm /home/poka/roms/pex0447p.zip
    echo 'CPU no permitida : '$mymac
   
fi
#Type=idle
