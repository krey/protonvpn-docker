#!/bin/bash
protonvpn connect --cc US
sockd -N $SOCKD_WORKERS &
bash
