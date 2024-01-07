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