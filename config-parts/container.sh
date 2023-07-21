#!/bin/vbash

# Container networks
set container network containers prefix '10.0.254.0/24'
set container network containers description 'Network for VyOS containers'

# Container registries
set container registry docker.io
set container registry ghcr.io
set container registry public.ecr.aws
set container registry quay.io

# coredns

set container name coredns cap-add 'net-bind-service'
set container name coredns image 'registry.k8s.io/coredns/coredns:v1.10.1'
set container name coredns memory '0'
set container name coredns network containers address '10.0.254.2'
set container name coredns shared-memory '0'
set container name coredns volume coredns-corefile destination '/Corefile'
set container name coredns volume coredns-corefile mode 'ro'
set container name coredns volume coredns-corefile source '/config/containers/coredns/config/Corefile'
set container name coredns volume coredns-hosts destination '/config/hosts'
set container name coredns volume coredns-hosts mode 'ro'
set container name coredns volume coredns-hosts source '/config/containers/coredns/config/hosts'

# haproxy k8s load balancer

set container name k8s-lb cap-add 'net-bind-service'
set container name k8s-lb image 'public.ecr.aws/docker/library/haproxy:2.8.1-alpine'
set container name k8s-lb memory '0'
set container name k8s-lb network containers address '10.0.254.3'
set container name k8s-lb shared-memory '0'
set container name k8s-lb volume k8s-lb-config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name k8s-lb volume k8s-lb-config mode 'ro'
set container name k8s-lb volume k8s-lb-config source '/config/containers/k8s-lb/config/haproxy.cfg'

# unifi

set container name unifi-network environment TZ value 'America/New_York'
set container name unifi-network image 'ghcr.io/goofball222/unifi:7.4.162'
set container name unifi-network memory '0'
set container name unifi-network network containers address '10.0.254.4'
set container name unifi-network shared-memory '0'
set container name unifi-network volume unifi-network-cert destination '/usr/lib/unifi/cert'
set container name unifi-network volume unifi-network-cert mode 'rw'
set container name unifi-network volume unifi-network-cert source '/config/containers/unifi/data/cert'
set container name unifi-network volume unifi-network-data destination '/usr/lib/unifi/data'
set container name unifi-network volume unifi-network-data mode 'rw'
set container name unifi-network volume unifi-network-data source '/config/containers/unifi/data/data'
set container name unifi-network volume unifi-network-logs destination '/usr/lib/unifi/logs'
set container name unifi-network volume unifi-network-logs mode 'rw'
set container name unifi-network volume unifi-network-logs source '/config/containers/unifi/data/logs'