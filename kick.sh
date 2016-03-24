#!/bin/bash

for line in $(cat programlist)
do
    iptables -I INPUT -j DROP -p udp --dport 5060 -m string --string "$line" --algo bm
done
