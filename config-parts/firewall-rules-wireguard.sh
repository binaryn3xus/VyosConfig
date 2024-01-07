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