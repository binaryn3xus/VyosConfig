# From CONTAINERS to GUEST
set firewall name containers-guest default-action 'accept'
set firewall name containers-guest description 'From CONTAINERS to GUEST'

# From CONTAINERS to LAN
set firewall name containers-lan default-action 'accept'
set firewall name containers-lan description 'From CONTAINERS to LAN'

# From CONTAINERS to LOCAL
set firewall name containers-local default-action 'accept'
set firewall name containers-local description 'From CONTAINERS to LOCAL'

# From CONTAINERS to SERVERS
set firewall name containers-servers default-action 'accept'
set firewall name containers-servers description 'From CONTAINERS to SERVERS'

# From CONTAINERS to TRUSTED
set firewall name containers-trusted default-action 'accept'
set firewall name containers-trusted description 'From CONTAINERS to TRUSTED'

# From CONTAINERS to WAN
set firewall name containers-wan default-action 'accept'
set firewall name containers-wan description 'From CONTAINERS to WAN'

# From CONTAINERS to WIREGUARD
set firewall name containers-wireguard default-action 'accept'
set firewall name containers-wireguard description 'From CONTAINERS to WIREGUARD'
