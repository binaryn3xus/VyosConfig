#!/bin/vbash

# Dynamic
set service dns dynamic interface eth0 service main host-name 'ipv4'
set service dns dynamic interface eth0 service main host-name 'ipv4.${SECRET_PUBLIC_DOMAIN}'
set service dns dynamic interface eth0 service main login '${SECRET_CLOUDFLARE_EMAIL}'
set service dns dynamic interface eth0 service main password '${SECRET_CLOUDFLARE_KEY}'
set service dns dynamic interface eth0 service main protocol 'cloudflare'
set service dns dynamic interface eth0 service main server 'api.cloudflare.com/client/v4'
set service dns dynamic interface eth0 service main zone '${SECRET_PUBLIC_DOMAIN}'

# Forwarding
set service dns forwarding allow-from '10.0.10.0/24'
set service dns forwarding cache-size '0'
set service dns forwarding listen-address '10.0.10.1'
set service dns forwarding name-server 1.0.0.1
set service dns forwarding name-server 1.1.1.1
set service dns forwarding name-server 8.8.4.4
set service dns forwarding name-server 8.8.8.8

# NTP Server
set service ntp allow-client address '0.0.0.0/0'
set service ntp allow-client address '::/0'
set service ntp server 0.us.pool.ntp.org
set service ntp server 1.us.pool.ntp.org
set service ntp server 2.us.pool.ntp.org
set service ntp server 3.us.pool.ntp.org
set service ntp server time1.vyos.net
set service ntp server time2.vyos.net
set service ntp server time3.vyos.net

# SSH Server
set service ssh disable-password-authentication
set service ssh port '22'
