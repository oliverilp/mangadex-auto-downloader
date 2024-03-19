#!/bin/bash

set -e

while true
do
    echo -e "\nStartin download\n"
    bash /mangadex/list.sh
    
    echo -e "\nFinished downloading"
    echo "Waiting for $DL_INTERVAL minute(s)"
    sleep $(($DL_INTERVAL * 60))
done
