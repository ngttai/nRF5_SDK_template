#!/usr/bin/env bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
GNU_INSTALL_ROOT=$(which arm-none-eabi-gcc | egrep -o --color="never" "\/.*\/")

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux OS
    echo "OS type Linux OS."
    SED_OPTIONS=""
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    echo "OS type Mac OSX"
    SED_OPTIONS=".BAK"
else
    # Unknown.
    echo "Unsupport this OS"
    exit -1
fi

echo "Fix and build micro-ecc."
cd $SCRIPT_DIR/../nRF5_SDKs/nRF5_SDK_17.1.0_ddde560/external/micro-ecc
sed -i $SED_OPTIONS "s/\r$//g" build_all.sh
chmod +x build_all.sh
./build_all.sh
