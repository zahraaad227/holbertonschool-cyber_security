#!/bin/bash
whois $1 | awk -F': ' '/Registrant|Admin|Tech/ && !/Fax|Phone/ {print $1 "," $2}' > "$1.csv"

