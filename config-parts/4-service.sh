#!/bin/vbash

# Forwarding
set service dns forwarding allow-from '10.0.10.0/24'
set service dns forwarding cache-size '0'
set service dns forwarding listen-address '10.0.10.1'
set service dns forwarding name-server 1.0.0.1
set service dns forwarding name-server 1.1.1.1
set service dns forwarding name-server 8.8.4.4
set service dns forwarding name-server 8.8.8.8

# Kubernetes DNS Forwarding
set service dns forwarding domain unscfleet.com name-server 10.0.30.31

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

# TFTP Server
set service tftp-server directory '/config/tftpboot'
set service tftp-server listen-address 10.0.10.1