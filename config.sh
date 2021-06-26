#!/bin/bash
# get credentials from https://protonvpn.com/support/vpn-login/
export PROTONVPN_USER=foo
export PROTONVPN_PASSWORD=bar
# Free: 1, Basic: 2, Plus: 3, Visionary: 4
export PROTONVPN_PLAN=2
# UDP: 1, TCP: 2
export PROTONVPN_PROTOCOL=1

# DNS Leak Protection makes sure that you always use ProtonVPN's DNS servers.
# For security reasons this option is recommended.

# 0 or blank) Do not configure DNS management (use host DNS)
# 1) Enable DNS Leak Protection (recommended by ProtonVPN, uses their DNS, but breaks cli API. Connection cmds seemingly succeed despite error returned.)
# 2) Configure Custom DNS Servers (Uses your defined DNS servers, does not appear to break `protonvpn status`)
# 3) Disable DNS Management (Blocks DNS completely)

export PROTONVPN_DNS=2

# If you set PROTONVPN_DNS to 2, define your custom nameservers below, space seperated as shown
# with the cloudflare example.

export PROTONVPN_DNS_SERVERS="1.1.1.1 1.0.0.1"

# The Kill Switch will block all network traffic if the VPN connection drops unexpectedly.

# 0 or blank) Do not configure Kill Switch (Kill Switch will not be enabled)
# 1) Enable Kill Switch (Block access to/from LAN)
# 2) Enable Kill Switch (Allow access to/from LAN)
# 3) Disable Kill Switch

export PROTONVPN_KILLSWITCH=2
