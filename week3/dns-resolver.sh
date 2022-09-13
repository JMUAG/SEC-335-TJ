#!/bin/bash

network=$1
dns=$2
for x in {2..254}
do 
  nslookup $network.$x  $dns | grep "name"  
done 
