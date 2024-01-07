#!/bin/vbash

# Global Options
# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

set firewall all-ping 'enable'
set firewall global-options all-ping 'enable'

# Address Groups

set firewall group interface-group IG_containers interface 'cni-containers'
set firewall group interface-group IG_containers interface 'pod-containers'
set firewall group interface-group IG_guest interface 'eth1.40'
set firewall group interface-group IG_lan interface 'eth1'
set firewall group interface-group IG_servers interface 'eth1.30'
set firewall group interface-group IG_trusted interface 'eth1.20'
set firewall group interface-group IG_wan interface 'eth0'
set firewall group interface-group IG_wireguard interface 'wg50'

set firewall group address-group k8s-ingress address '10.0.30.32'
set firewall group network-group k8s-ingress description 'Kubernetes IPv4 Host'

set firewall group network-group cloudflare-networks-v4 description 'Task Managed: Cloudflare IPv4 Hosts'
set firewall group network-group cloudflare-networks-v4 network '173.245.48.0/20'
set firewall group network-group cloudflare-networks-v4 network '103.21.244.0/22'
set firewall group network-group cloudflare-networks-v4 network '103.22.200.0/22'
set firewall group network-group cloudflare-networks-v4 network '103.31.4.0/22'
set firewall group network-group cloudflare-networks-v4 network '141.101.64.0/18'
set firewall group network-group cloudflare-networks-v4 network '108.162.192.0/18'
set firewall group network-group cloudflare-networks-v4 network '190.93.240.0/20'
set firewall group network-group cloudflare-networks-v4 network '188.114.96.0/20'
set firewall group network-group cloudflare-networks-v4 network '197.234.240.0/22'
set firewall group network-group cloudflare-networks-v4 network '198.41.128.0/17'
set firewall group network-group cloudflare-networks-v4 network '162.158.0.0/15'
set firewall group network-group cloudflare-networks-v4 network '104.16.0.0/13'
set firewall group network-group cloudflare-networks-v4 network '104.24.0.0/14'
set firewall group network-group cloudflare-networks-v4 network '172.64.0.0/13'
set firewall group network-group cloudflare-networks-v4 network '131.0.72.0/22'
