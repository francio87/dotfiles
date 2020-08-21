#!/bin/bash
session=$1
pad=$2
#operator=$(whoami)
operator=davidef
vpn_ip=$(ssh ${operator}@sos.nethesis.it sancho session list ${session} | grep vpn | awk '{print $2}')

ssh ${operator}@sos.nethesis.it -L ${pad}3000:${vpn_ip}:3000 -L ${pad}980:${vpn_ip}:980 -L ${pad}9090:${vpn_ip}:9090 -L ${pad}443:${vpn_ip}:443
