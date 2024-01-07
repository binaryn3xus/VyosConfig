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