#!/bin/bash
curl -s -X POST -d "$3" -H "Host: $1" "$2" | grep -q "\"Host\": \"$1\"" && echo ok || echo invalid
