#!/bin/bash

# Stop on the first sign of trouble
set -e

SCRIPT_COMMON_FILE=$(pwd)/../rak/rak/shell_script/rak_common.sh


source $SCRIPT_COMMON_FILE

if [ $UID != 0 ]; then
    echo "Operation not permitted. Forgot sudo?"
    exit 1
fi

apt install jq ppp minicom -y

cp rak /usr/local/ -rf

echo_success "Copy Rak file success!"
