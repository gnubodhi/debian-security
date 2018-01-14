#!/bin/bash
temp=$(sudo ufw status | grep Status | cut -d" " -f2)
if [ "$temp" == "inactive" ]; then
exec sudo ufw enable
fi
