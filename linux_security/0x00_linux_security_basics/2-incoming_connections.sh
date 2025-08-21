#!/bin/bash
sudo ufw allow proto tcp from any to any port 80 && sudo ufw default deny incoming
