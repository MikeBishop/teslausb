#!/bin/bash

VIN=$(grep "^export TESLA_BLE_VIN=" /root/teslausb_setup_variables.conf | cut -d'=' -f2- | head -n 1)

/root/bin/tesla-control -ble -vin $VIN add-key-request /root/.ble/key_public.pem owner cloud_key

"$(dirname "$0")/reload.sh" "Pairing requested"
