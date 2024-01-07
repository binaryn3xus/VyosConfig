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