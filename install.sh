#!/bin/bash

# Stop on the first sign of trouble
set -e

if [ $UID != 0 ]; then
    echo "ERROR: Operation not permitted. Forgot sudo?"
    exit 1
fi

SCRIPT_COMMON_FILE=$(pwd)/rak/rak/shell_script/rak_common.sh
source $SCRIPT_COMMON_FILE

apt update
pushd rak
./install.sh $1
sleep 1
popd

pushd sysconf
./install.sh $1
sleep 1
popd

pushd lte
./install.sh $1
sleep 1
popd

echo_success "*********************************************************"
echo_success "*  The RAKwireless for RAK2013 is successfully installed!   *"
echo_success "*********************************************************"
