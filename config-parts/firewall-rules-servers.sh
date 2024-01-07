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