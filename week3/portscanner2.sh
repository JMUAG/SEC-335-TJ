#!/bin/bash

network=$1
port=$2
sudo nmap -Pn $network.1-254 -open -p $port -oG dns.txt 


