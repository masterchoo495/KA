#!/bin/bash

ip=192.168.1.2
port=80
check_file=/var/www/html/index.html

nc -z -w3 "$ip" "$port"
check_port=$?

if [[ -f $check_file && $check_port -eq 0 ]]; then
	exit 0
else
	exit 1
fi
