#! /bin/bash
#------------------------------------------------------------------------------
# Filename:    chineseInputForWPS.sh
# Usage:       ./chineseInputForWPS.sh
# Version:     1.0
# Date:        2017-31-05
# Author:      vincent
# Email:       N/A
# Description: N/A
# Notes:       N/A
#-------------------------------------------------------------------------------

declare XMODIFIERS='export XMODIFIERS="@im=fcitx"'
declare QT_IM_MODULE='export QT_IM_MODULE="fcitx"'
declare wpsPath="/usr/bin/wps"
declare wppPath="/usr/bin/wpp"
declare etPath="/usr/bin/et"

outputMsg()
{
    if [ $1 -ne 0 ]
    then
        echo "unsuccessful !!"
        exit
    fi
}

sudo sed -i "2i$XMODIFIERS" $wpsPath
outputMsg $?
sudo sed -i "2i$QT_IM_MODULE" $wpsPath
outputMsg $?

sudo sed -i "2i$XMODIFIERS" $wppPath
outputMsg $?
sudo sed -i "2i$QT_IM_MODULE" $wppPath
outputMsg $?

sudo sed -i "2i$XMODIFIERS" $etPath
outputMsg $?
sudo sed -i "2i$QT_IM_MODULE" $etPath
outputMsg $?

echo "Successful! You can do it!"

exit 0
