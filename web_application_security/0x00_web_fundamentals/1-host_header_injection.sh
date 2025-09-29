#!/bin/bash
curl -s -X POST -d "$3" -H "Host: $1" "$2" | grep -q "http://$1/login" && printf 'ok' || printf 'invalid'

