#!/bin/bash
source /tmp/config.sh
expect /tmp/vpn-setup-main.exp

if [ ${PROTONVPN_DNS} -gt 0 ]; then
	if [ ${PROTONVPN_DNS} -eq 2 ]; then
		expect /tmp/vpn-setup-dns-custom.exp
	else
		expect /tmp/vpn-setup-dns.exp
	fi
fi

if [ ${PROTONVPN_KILLSWITCH} -gt 0 ]; then
	expect /tmp/vpn-setup-killswitch.exp
fi

rm /tmp/vpn-setup-{main,dns,dns-custom,killswitch}.exp /tmp/{setup,config}.sh
