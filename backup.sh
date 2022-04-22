#!/bin/sh
cd <PATH TO BITWARDEN DATA>
tar -zcvf /home/ubuntu/bitwarden/$(date +\%Y-\%m-\%d-\%H)-backup.tar.gz data
~/Dropbox-Uploader/dropbox_uploader.sh upload /home/ubuntu/bitwarden/$(date +\%Y-\%m-\%d-\%H)-backup.tar.gz /bitwarden
rclone copy /home/ubuntu/bitwarden/$(date +\%Y-\%m-\%d-\%H)-backup.tar.gz jianguoyun:bitwarden
find /home/ubuntu/bitwarden -type f -name *.tar.gz -mtime +7 -exec rm {} \;
