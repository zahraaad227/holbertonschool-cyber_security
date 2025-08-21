#!/bin/bash
ufw allow proto tcp from any to any port 80 && ufw default deny incoming
