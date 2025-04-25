#!/bin/bash

if /root/bin/tesla-control -ble -vin $(cat /root/.ble/vin) session-info /root/.ble/key_private.pem infotainment
then
  "$(dirname "$0")/reload.sh" "paired"
else
  "$(dirname "$0")/reload.sh" "not paired"
fi
