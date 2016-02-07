#!/bin/bash
# yamaha-remote.sh : power ON/OFF a yamaha amplifier
#
# Author: Mr Xhark -> @xhark
# License : Creative Commons http://creativecommons.org/licenses/by-nd/4.0/deed.fr
# Website : http://blogmotion.fr 

VERSION="2016.02.07"

# Yamaha IP Address
IP="192.168.0.16"

URL="YamahaRemoteControl/ctrl"
ORDRE="<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n"

POWER_ON="<YAMAHA_AV cmd=\"PUT\"><Main_Zone><Power_Control><Power>On</Power></Power_Control></Main_Zone></YAMAHA_AV>"
POWER_OFF="<YAMAHA_AV cmd=\"PUT\"><Main_Zone><Power_Control><Power>Standby</Power></Power_Control></Main_Zone></YAMAHA_AV>"

if [[ $# -eq 1  && $1 == "ON"  ]]; then
        ORDRE+=$POWER_ON
        echo "ON"
elif [[ $# -eq 1  && $1 == "OFF" ]]; then
        ORDRE+=$POWER_OFF
        echo "OFF"
else
        echo -e "Usage :  `basename $0` <ON>|<OFF>" && exit 0
fi

curl -v -H "Content-Type: text/xml" -X POST -d "${ORDRE}" http://${IP}/${URL}
echo