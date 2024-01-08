#!/bin/vbash

# LAN VLAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 default-router '10.0.10.1'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 domain-name 'fourthechelonhq.com'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 name-server '10.0.254.2'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 range 0 start '10.0.10.100'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 range 0 stop '10.0.10.254'

set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-24-port ip-address '10.0.10.2'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-24-port mac-address 'e0:63:da:c9:41:20'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-us-8-60w-laundryroom2 ip-address '10.0.10.3'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-us-8-60w-laundryroom2 mac-address '74:83:c2:78:53:7b'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-downstairs-ap ip-address '10.0.10.4'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-downstairs-ap mac-address '74:83:c2:02:7e:d6'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-us-8-60w-laundryroom1 ip-address '10.0.10.5'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-us-8-60w-laundryroom1 mac-address '74:83:c2:78:53:21'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-upstairs-ap ip-address '10.0.10.6'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-upstairs-ap mac-address '74:83:c2:b0:81:bc'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-usw-flex-mini ip-address '10.0.10.7'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping unifi-usw-flex-mini mac-address '74:ac:b9:aa:ed:d5'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping UniFi-CloudKey-Gen2-Plus ip-address '10.0.10.8'
set service dhcp-server shared-network-name LAN subnet 10.0.10.0/24 static-mapping UniFi-CloudKey-Gen2-Plus mac-address '74:83:c2:71:af:c5'

# Trusted VLAN

set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 default-router '10.0.20.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 domain-name 'fourthechelonhq.com'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 name-server '10.0.254.2'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 range 0 start '10.0.20.100'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 range 0 stop '10.0.20.254'

# 10.0.20.1x - PCs
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping UNSC-PillarOfAutumn ip-address '10.0.20.10'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping UNSC-PillarOfAutumn mac-address '74:56:3C:CA:E9:98'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping UNSC-AllUnderHeaven ip-address '10.0.20.11'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping UNSC-AllUnderHeaven mac-address 'a0:a4:c5:92:a1:80'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping UNSC-Cairo ip-address '10.0.20.13'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping UNSC-Cairo mac-address '00:1f:c6:9c:9a:99'

# 10.0.20.3x - Cameras
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-livingroom-camera ip-address '10.0.20.30'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-livingroom-camera mac-address '9c:8e:cd:0b:78:01'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-masterbedroom-camera ip-address '10.0.20.31'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-masterbedroom-camera mac-address '9c:8e:cd:12:86:7d'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-garage-camera ip-address '10.0.20.32'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-garage-camera mac-address '9c:8e:cd:02:92:99'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-frontporch-camera ip-address '10.0.20.33'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-frontporch-camera mac-address '9c:8e:cd:1c:e3:33'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-backpatio-camera ip-address '10.0.20.34'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-backpatio-camera mac-address '9c:8e:cd:1c:e6:29'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-backyard-camera ip-address '10.0.20.35'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-driveway-camera mac-address '9c:8e:cd:1c:e9:61'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-eastside-camera ip-address '10.0.20.36'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-backyard-camera mac-address '9c:8e:cd:1c:e3:35'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-driveway-camera ip-address '10.0.20.37'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-eastside-camera mac-address '9c:8e:cd:1c:e9:68'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-office-camera ip-address '10.0.20.38'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping amcrest-office-camera mac-address '9c:8e:cd:32:63:0c'

# 10.0.20.5x - Logitech & RaspberryPi
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping HarmonyHub ip-address '10.0.20.51'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping HarmonyHub mac-address '00:04:20:ff:79:c8'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping rpi-hyperion-livingroom ip-address '10.0.20.50'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping rpi-hyperion-livingroom mac-address 'b8:27:eb:27:94:b1'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping rpi-octoprint-cr10s4 ip-address '10.0.20.52'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping rpi-octoprint-cr10s4 mac-address 'b8:27:eb:79:f0:77'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping rpi-octoprint-ender3 ip-address '10.0.20.53'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping rpi-octoprint-ender3 mac-address 'b8:27:eb:82:4c:f1'

# 10.0.20.6x - Vacuums
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping roomba-890-3176C01071810790 ip-address '10.0.20.60'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping roomba-890-3176C01071810790 mac-address 'd0:c5:d3:ae:8c:05'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping roomba-i6550-CB26C425C0D7420E8BE8B965CB10DF4F ip-address '10.0.20.61'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping roomba-i6550-CB26C425C0D7420E8BE8B965CB10DF4F mac-address '50:14:79:22:ef:f6'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping roborock-vacuum-a38 ip-address '10.0.20.62'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping roborock-vacuum-a38 mac-address 'b0:4a:39:71:44:15'

# 10.0.20.7x - WLED
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-office-ceiling ip-address '10.0.20.70'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-office-ceiling mac-address '30:c6:f7:bf:e9:74'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-kitchen-cabinet ip-address '10.0.20.71'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-kitchen-cabinet mac-address '78:21:84:3f:28:e8'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-external-holiday ip-address '10.0.20.72'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-external-holiday mac-address '44:17:93:5d:6e:58'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-server-rack ip-address '10.0.20.73'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-server-rack mac-address '98:f4:ab:dc:a2:45'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-living-room-tv ip-address '10.0.20.74'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping wled-living-room-tv mac-address 'ec:fa:bc:c2:f6:60'

# 10.0.20.8x / 10.0.20.9x - Tasmota/ESPHome
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-saltlamp ip-address '10.0.20.80'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-saltlamp mac-address '84:0D:8E:65:76:E6'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-pantry ip-address '10.0.20.81'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-pantry mac-address '98:F4:AB:DC:CC:F2'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-mbr-lamp-bulb ip-address '10.0.20.82'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-mbr-lamp-bulb mac-address '4C:EB:D6:0F:F4:29'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-under-leds ip-address '10.0.20.83'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-under-leds mac-address '60:01:94:CA:81:F8'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-upper-leds ip-address '10.0.20.84'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-upper-leds mac-address '60:01:94:66:6B:B0'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-coffee-lamp ip-address '10.0.20.85'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-coffee-lamp mac-address '60:01:94:C8:0C:E8'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-holiday-lights-main ip-address '10.0.20.86'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-holiday-lights-main mac-address 'CC:50:E3:C8:08:D3'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-washer ip-address '10.0.20.87'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-washer mac-address 'CC:50:E3:1A:FD:66'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-pet-heating ip-address '10.0.20.88'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-pet-heating mac-address 'DC:4F:22:AA:06:B2'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-overhead-light-1 ip-address '10.0.20.89'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-overhead-light-1 mac-address '2C:F4:32:C3:4F:13'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-overhead-light-2 ip-address '10.0.20.90'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping tasmota-office-overhead-light-2 mac-address 'D8:F1:5B:86:87:DC'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping esphome-presense-sensor-001 ip-address '10.0.20.91'
set service dhcp-server shared-network-name TRUSTED subnet 10.0.20.0/24 static-mapping esphome-presense-sensor-001 mac-address '80:64:6f:9b:cc:da'

# Servers VLAN

set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 default-router '10.0.30.1'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 domain-name 'fourthechelonhq.com'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 name-server '10.0.254.2'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 range 0 start '10.0.30.100'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 range 0 stop '10.0.30.254'

# 10.0.20.x - Misc Servers
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping UbuntuServer ip-address '10.0.30.2'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping UbuntuServer mac-address 'ac:e2:d3:0d:48:74'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping unsc-nightwatch ip-address '10.0.30.3'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping unsc-nightwatch mac-address 'b8:85:84:98:d9:6f'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping unsc-infinity ip-address '10.0.30.4'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping unsc-infinity mac-address '00:11:32:a7:1f:24'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping pikvmv4 ip-address '10.0.30.5'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping pikvmv4 mac-address 'e4:5f:01:e4:91:70'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping unsc-eternity ip-address '10.0.30.6'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping unsc-eternity mac-address '0c:9d:92:85:5e:56'

# 10.0.20.3x - Kubernetes Nodes
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node1 ip-address '10.0.30.11'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node1 mac-address 'b8:85:84:ad:fc:89'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node2 ip-address '10.0.30.12'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node2 mac-address 'b8:85:84:bf:db:f3'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node3 ip-address '10.0.30.13'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node3 mac-address '14:b3:1f:28:a6:b4'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node4 ip-address '10.0.30.14'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node4 mac-address 'ac:e2:d3:17:9d:0e'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node5 ip-address '10.0.30.15'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node5 mac-address 'ac:e2:d3:0d:48:71'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node6 ip-address '10.0.30.16'
set service dhcp-server shared-network-name SERVERS subnet 10.0.30.0/24 static-mapping fleetcom-node6 mac-address '6c:2b:59:eb:e3:be'

# Guest VLAN

set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 10.0.40.0/24 default-router '10.0.40.1'
set service dhcp-server shared-network-name GUEST subnet 10.0.40.0/24 domain-name 'fourthechelonhq.com'
set service dhcp-server shared-network-name GUEST subnet 10.0.40.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 10.0.40.0/24 name-server '10.0.254.2'
set service dhcp-server shared-network-name GUEST subnet 10.0.40.0/24 range 0 start '10.0.40.100'
set service dhcp-server shared-network-name GUEST subnet 10.0.40.0/24 range 0 stop '10.0.40.254'
