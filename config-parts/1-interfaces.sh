#!/bin/vbash

# WAN Interface
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id 'e4:3a:6e:5d:a0:98'

# LAN Interface
set interfaces ethernet eth1 address '10.0.10.1/24'
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id 'e4:3a:6e:5d:a0:99'
set interfaces ethernet eth1 vif 20 address '10.0.20.1/24'
set interfaces ethernet eth1 vif 20 description 'TRUSTED'
set interfaces ethernet eth1 vif 30 address '10.0.30.1/24'
set interfaces ethernet eth1 vif 30 description 'SERVERS'
set interfaces ethernet eth1 vif 40 address '10.0.40.1/24'
set interfaces ethernet eth1 vif 40 description 'GUEST'

# Other interfaces
set interfaces ethernet eth2 hw-id 'e4:3a:6e:5d:a0:9a'
set interfaces ethernet eth3 hw-id 'e4:3a:6e:5d:a0:9b'
set interfaces ethernet eth4 hw-id 'e4:3a:6e:5d:a0:9c'
set interfaces ethernet eth5 hw-id 'e4:3a:6e:5d:a0:9d'

set interfaces loopback lo

set interfaces wireguard wg50 address '10.0.50.1/24'
set interfaces wireguard wg50 description 'WIREGUARD'
set interfaces wireguard wg50 peer joshuas-phone allowed-ips '10.0.50.15/32'
set interfaces wireguard wg50 peer joshuas-phone persistent-keepalive '15'
set interfaces wireguard wg50 peer joshuas-phone public-key 'LhsEl0YTabwPC6UdCSNfXVcgGvntpjrwwFzHdrSEXl0='
set interfaces wireguard wg50 peer unsc-pillarofautumn allowed-ips '10.0.50.16/32'
set interfaces wireguard wg50 peer unsc-pillarofautumn public-key 'XtxaCFQkNqgkHMpxKnglN0DUITE17Cd05GrMIolm8Sw='
set interfaces wireguard wg50 port '51820'
set interfaces wireguard wg50 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
