#!/bin/vbash

set nat destination rule 100 description 'DNAT HTTPS for ingress-nginx'
set nat destination rule 100 destination port '443'
set nat destination rule 100 inbound-interface 'eth0'
set nat destination rule 100 protocol 'tcp'
set nat destination rule 100 translation address '10.0.30.32'
set nat destination rule 100 translation port '443'

set nat destination rule 200 description 'DNAT HTTP for ingress-nginx'
set nat destination rule 200 destination port '80'
set nat destination rule 200 inbound-interface 'eth0'
set nat destination rule 200 protocol 'tcp'
set nat destination rule 200 translation address '10.0.30.32'
set nat destination rule 200 translation port '80'

set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface 'eth0'
set nat source rule 100 translation address 'masquerade'