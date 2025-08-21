#!/bin/bash
# Yalnız TCP 80 portuna gələn bağlantılara icazə ver

sudo iptables -P INPUT DROP
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

echo "Rules updated"
