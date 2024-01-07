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