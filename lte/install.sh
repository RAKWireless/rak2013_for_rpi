#!/bin/bash

SCRIPT_COMMON_FILE=$(pwd)/../rak/rak/shell_script/rak_common.sh
source $SCRIPT_COMMON_FILE

# Stop on the first sign of trouble
set -e

if [ $UID != 0 ]; then
    echo "ERROR: Operation not permitted. Forgot sudo?"
    exit 1
fi

if [ ! -d "/usr/local/rak/lte" ]; then mkdir "/usr/local/rak/lte" -p ; fi

cp ppp-creator.sh /usr/local/rak/lte/
cp rak-pppd.service /lib/systemd/system
cp pppd.sh /usr/local/rak/bin/
cp ppp.sh /usr/local/rak/bin/
/usr/local/rak/lte/ppp-creator.sh HOLOGRAM ttyAMA0 115200
echo_success "Install LTE module success!\n"
sleep 2
