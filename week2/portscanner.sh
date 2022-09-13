#!/bin/bash


hostfile=$1
portfile=$2

echo "host,port"
for host in $(cat $hostfile); do
  for port in $(cat $portfile); do
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
      echo "$host,$port" && sudo nmap -A $host -p $port
  done
done

#The code sudo nmap -A $host -p $port allows the user to obtain a definition of the operating systems.

