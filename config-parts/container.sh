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

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network containers address '10.0.254.5'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# haproxy k8s load balancer

set container name k8s-lb cap-add 'net-bind-service'
set container name k8s-lb image 'public.ecr.aws/docker/library/haproxy:2.9.1-alpine'
set container name k8s-lb memory '0'
set container name k8s-lb network containers address '10.0.254.3'
set container name k8s-lb shared-memory '0'
set container name k8s-lb volume k8s-lb-config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name k8s-lb volume k8s-lb-config mode 'ro'
set container name k8s-lb volume k8s-lb-config source '/config/containers/k8s-lb/config/haproxy.cfg'

# unifi

set container name unifi environment CERT_IS_CHAIN value 'true'
set container name unifi environment TZ value 'America/New_York'
set container name unifi environment UNIFI_GID value '999'
set container name unifi environment UNIFI_STDOUT value 'true'
set container name unifi environment UNIFI_UID value '999'
set container name unifi image 'ghcr.io/jacobalberty/unifi-docker:v8.0.24'
set container name unifi memory '0'
set container name unifi network containers address '10.0.254.4'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume data destination '/unifi'
set container name unifi volume data mode 'rw'
set container name unifi volume data source '/config/containers/unifi'
