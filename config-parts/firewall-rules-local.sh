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