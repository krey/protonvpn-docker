#!/bin/bash

# Initialization
expect /tmp/vpn-setup.exp    

# Connection
protonvpn connect --cc US
sockd -N $SOCKD_WORKERS &
bash
