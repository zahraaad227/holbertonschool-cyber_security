#!/bin/bash
ss -t -a -n -p | awk 'NR==1{printf "%-8s %-8s %-8s %-25s %-25s %s\n", "State","Recv-Q","Send-Q","Local Address:Port","Peer Address:Port","Process"} NR>1{printf "%-8s %-8s %-8s %-25s %-25s %s\n", $1,$2,$3,$4,$5,substr($0,index($0,$6))}'
