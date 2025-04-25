#!/bin/bash

function exists(){
  if [ -e "$1" ]
  then
    echo -n yes
  else
    echo -n no
  fi
}

cat << EOF
HTTP/1.0 200 OK
Content-type: application/json

{
   "has_cam" : "$(exists /backingfiles/cam_disk.bin)",
   "has_music" : "$(exists /backingfiles/music_disk.bin)",
   "has_lightshow" : "$(exists /backingfiles/lightshow_disk.bin)",
   "has_boombox" : "$(exists /backingfiles/boombox_disk.bin)"
   "uses_ble" : "$(exists /root/.ble/key_public.pem)",
}
EOF
