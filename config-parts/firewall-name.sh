#!/bin/vbash

# From containers to guest
set firewall name containers-guest default-action 'accept'
set firewall name containers-guest description 'From CONTAINERS to GUEST'

# From containers to lan
set firewall name containers-lan default-action 'accept'
set firewall name containers-lan description 'From CONTAINERS to LAN'

# From containers to local
set firewall name containers-local default-action 'accept'
set firewall name containers-local description 'From CONTAINERS to LOCAL'

# From containers to servers
set firewall name containers-servers default-action 'accept'
set firewall name containers-servers description 'From CONTAINERS to SERVERS'

# From containers to trusted
set firewall name containers-trusted default-action 'accept'
set firewall name containers-trusted description 'From CONTAINERS to TRUSTED'

# From containers to wan
set firewall name containers-wan default-action 'accept'
set firewall name containers-wan description 'From CONTAINERS to WAN'

# From containers to wireguard
set firewall name containers-wireguard default-action 'accept'
set firewall name containers-wireguard description 'From CONTAINERS to WIREGUARD'

# From guest to containers
set firewall name guest-containers default-action 'drop'
set firewall name guest-containers description 'From GUEST to CONTAINERS'
set firewall name guest-containers rule 100 action 'accept'
set firewall name guest-containers rule 100 description 'Rule: accept_dns'
set firewall name guest-containers rule 100 destination port 'domain,domain-s'
set firewall name guest-containers rule 100 protocol 'tcp_udp'

# From guest to lan
set firewall name guest-lan default-action 'drop'
set firewall name guest-lan description 'From GUEST to LAN'

# From guest to local
set firewall name guest-local default-action 'drop'
set firewall name guest-local description 'From GUEST to LOCAL'

# From guest to servers
set firewall name guest-servers default-action 'drop'
set firewall name guest-servers description 'From GUEST to SERVERS'

# From guest to trusted
set firewall name guest-trusted default-action 'drop'
set firewall name guest-trusted description 'From GUEST to TRUSTED'

# From guest to wan
set firewall name guest-wan default-action 'accept'
set firewall name guest-wan description 'From GUEST to WAN'

# From guest to wireguard
set firewall name guest-wireguard default-action 'drop'
set firewall name guest-wireguard description 'From GUEST to WIREGUARD'

# From lan to containers
set firewall name lan-containers default-action 'accept'
set firewall name lan-containers description 'From LAN to CONTAINERS'

# From lan to guest
set firewall name lan-guest default-action 'accept'
set firewall name lan-guest description 'From LAN to GUEST'

# From lan to local
set firewall name lan-local default-action 'accept'
set firewall name lan-local description 'From LAN to LOCAL'

# From lan to servers
set firewall name lan-servers default-action 'accept'
set firewall name lan-servers description 'From LAN to SERVERS'

# From lan to trusted
set firewall name lan-trusted default-action 'accept'
set firewall name lan-trusted description 'From LAN to TRUSTED'

# From lan to wan
set firewall name lan-wan default-action 'accept'
set firewall name lan-wan description 'From LAN to WAN'

# From lan to wireguard
set firewall name lan-wireguard default-action 'accept'
set firewall name lan-wireguard description 'From LAN to WIREGUARD'

# From local to containers
set firewall name local-containers default-action 'accept'
set firewall name local-containers description 'From LOCAL to CONTAINERS'

# From local to guest
set firewall name local-guest default-action 'accept'
set firewall name local-guest description 'From LOCAL to GUEST'

# From local to lan
set firewall name local-lan default-action 'accept'
set firewall name local-lan description 'From LOCAL to LAN'

# From local to servers
set firewall name local-servers default-action 'accept'
set firewall name local-servers description 'From LOCAL to SERVERS'

# From local to trusted
set firewall name local-trusted default-action 'accept'
set firewall name local-trusted description 'From LOCAL to TRUSTED'

# From local to wan
set firewall name local-wan default-action 'accept'
set firewall name local-wan description 'From LOCAL to WAN'

# From local to wireguard
set firewall name local-wireguard default-action 'accept'
set firewall name local-wireguard description 'From LOCAL to WIREGUARD'

# From servers to containers
set firewall name servers-containers default-action 'accept'
set firewall name servers-containers description 'From SERVERS to CONTAINERS'

# From servers to guest
set firewall name servers-guest default-action 'accept'
set firewall name servers-guest description 'From SERVERS to GUEST'

# From servers to lan
set firewall name servers-lan default-action 'accept'
set firewall name servers-lan description 'From SERVERS to LAN'

# From servers to local
set firewall name servers-local default-action 'accept'
set firewall name servers-local description 'From SERVERS to LOCAL'

# From servers to trusted
set firewall name servers-trusted default-action 'accept'
set firewall name servers-trusted description 'From SERVERS to TRUSTED'

# From servers to wan
set firewall name servers-wan default-action 'accept'
set firewall name servers-wan description 'From SERVERS to WAN'

# From servers to wireguard
set firewall name servers-wireguard default-action 'accept'
set firewall name servers-wireguard description 'From SERVERS to WIREGUARD'

# From trusted to containers
set firewall name trusted-containers default-action 'accept'
set firewall name trusted-containers description 'From TRUSTED to CONTAINERS'

# From trusted to guest
set firewall name trusted-guest default-action 'accept'
set firewall name trusted-guest description 'From TRUSTED to GUEST'

# From trusted to lan
set firewall name trusted-lan default-action 'accept'
set firewall name trusted-lan description 'From TRUSTED to LAN'

# From trusted to local
set firewall name trusted-local default-action 'accept'
set firewall name trusted-local description 'From TRUSTED to LOCAL'

# From trusted to servers
set firewall name trusted-servers default-action 'accept'
set firewall name trusted-servers description 'From TRUSTED to SERVERS'

# From trusted to wan
set firewall name trusted-wan default-action 'accept'
set firewall name trusted-wan description 'From TRUSTED to WAN'

# From trusted to wireguard
set firewall name trusted-wireguard default-action 'accept'
set firewall name trusted-wireguard description 'From TRUSTED to WIREGUARD'

# From wan to containers
set firewall name wan-containers default-action 'drop'
set firewall name wan-containers description 'From WAN to CONTAINERS'
set firewall name wan-containers enable-default-log

# From wan to guest
set firewall name wan-guest default-action 'drop'
set firewall name wan-guest description 'From WAN to GUEST'
set firewall name wan-guest enable-default-log

# From wan to lan
set firewall name wan-lan default-action 'drop'
set firewall name wan-lan description 'From WAN to LAN'
set firewall name wan-lan enable-default-log

# From wan to local
set firewall name wan-local default-action 'drop'
set firewall name wan-local description 'From WAN to LOCAL'
set firewall name wan-local enable-default-log
set firewall name wan-local rule 400 action 'accept'
set firewall name wan-local rule 400 description 'Rule: Accept Wireguard'
set firewall name wan-local rule 400 destination port '51820'
set firewall name wan-local rule 400 protocol 'udp'

# From wan to servers
set firewall name wan-servers default-action 'drop'
set firewall name wan-servers description 'From WAN to SERVERS'
set firewall name wan-servers enable-default-log

set firewall name wan-servers rule 301 action 'accept'
set firewall name wan-servers rule 301 description 'Plexk3s - Allow incoming traffic on port 32400 to 10.0.30.32'
set firewall name wan-servers rule 301 destination group address-group 'k8s-ingress'
set firewall name wan-servers rule 301 destination port '32400'
set firewall name wan-servers rule 301 protocol 'tcp'

set firewall name wan-servers rule 400 action 'accept'
set firewall name wan-servers rule 400 description 'Rule: Accept ingress from Cloudflare'
set firewall name wan-servers rule 400 destination group address-group 'k8s-ingress'
set firewall name wan-servers rule 400 destination port 'http,https'
set firewall name wan-servers rule 400 protocol 'tcp'
set firewall name wan-servers rule 400 source group network-group 'cloudflare-networks-v4'

# From wan to trusted
set firewall name wan-trusted default-action 'drop'
set firewall name wan-trusted description 'From WAN to TRUSTED'
set firewall name wan-trusted enable-default-log

# From wan to wireguard
set firewall name wan-wireguard default-action 'drop'
set firewall name wan-wireguard description 'From WAN to WIREGUARD'
set firewall name wan-wireguard enable-default-log

# From wireguard to containers
set firewall name wireguard-containers default-action 'accept'
set firewall name wireguard-containers description 'From WIREGUARD to CONTAINERS'

# From wireguard to guest
set firewall name wireguard-guest default-action 'accept'
set firewall name wireguard-guest description 'From WIREGUARD to GUEST'

# From wireguard to lan
set firewall name wireguard-lan default-action 'accept'
set firewall name wireguard-lan description 'From WIREGUARD to LAN'

# From wireguard to local
set firewall name wireguard-local default-action 'accept'
set firewall name wireguard-local description 'From WIREGUARD to LOCAL'

# From wireguard to servers
set firewall name wireguard-servers default-action 'accept'
set firewall name wireguard-servers description 'From WIREGUARD to SERVERS'

# From wireguard to trusted
set firewall name wireguard-trusted default-action 'accept'
set firewall name wireguard-trusted description 'From WIREGUARD to TRUSTED'

# From wireguard to wan
set firewall name wireguard-wan default-action 'accept'
set firewall name wireguard-wan description 'From WIREGUARD to WAN'
