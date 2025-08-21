#!/bin/bash

# Check if run as root
if [[ $EUID -ne 0 ]]; then
  echo "Please run this script as root or with sudo."
  exit 1
fi

# Check if argument is provided
if [[ -z "$1" ]]; then
  echo "Usage: $0 <subnetwork-or-host>"
  exit 1
fi

# Run nmap scan on the provided target
sudo nmap "$1"
