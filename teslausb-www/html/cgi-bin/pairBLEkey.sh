#!/bin/bash

/root/bin/tesla-control" -ble -vin $(cat /root/.ble/vin) add-key-request /root/.ble/key_public.pem owner cloud_key

"$(dirname "$0")/reload.sh" "Pairing requested"
