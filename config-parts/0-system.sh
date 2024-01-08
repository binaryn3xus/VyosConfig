#!/bin/vbash

set system domain-name 'fourthechelonhq.com'
set system host-name 'vyos'
set system time-zone 'America/New_York'

set system name-server '1.1.1.1'
set system name-server '1.0.0.1'

set system ipv6 disable-forwarding

set system config-management commit-revisions '100'

set system conntrack modules ftp
set system conntrack modules h323
set system conntrack modules nfs
set system conntrack modules pptp
set system conntrack modules sip
set system conntrack modules sqlnet
set system conntrack modules tftp

set system console device ttyS0 speed '115200'

set system login user vyos authentication encrypted-password '$6$indVP8XirSxPw4xh$uviVQOm5A4z3vjsEbJxh9yxBtAQ2sBDB9rU.5bUcXnCcuWZ8JIQf8XM/ErJLjiQDkXsz2AzhHVrThaSBJzTqT0'
set system login user vyos authentication plaintext-password ''
set system login user vyos authentication public-keys joshu@UNSC-INFINITY key 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDF1CyzqiuSfBD/fiGo0GAHpZWeTeqD8vvGdr15lCg5Nm3o1vcLQtqwdv/8qXF+Y4AUxRh2jB1+Az8fYhXR88tTGLE2mzxyw4GMlvjxQUiIP1EgnCFzE8GqzanipEAoJh9zotujPWZKI57/e/dF364SwT6x/EwvQVPaF2+qMGYeAiqGdV10GiJ+8V735cHNl0kziIqD7dscRs8geuEUUwhNIyjorQcRILphVIZTfaetzl+F455lW1/RwsQQA2pUBz3bmn1InnZDfaLuWfp39rOI4/1zaVOK9lbRIQW/CtMJ0abGEjOXnDyj7B1HJIV+a+U6REapNzgL7SzkaP1ipnAXiQ8P6rv6W5iA4V47NpNC+1gksQRA8TccmzRzkVT+Hs0IUQr2IDY//lOh/QnpPS+LDGICEFzuTafwF/b2moTVaE1bk0BIPAmR+LSsACCoE+XF6+l1MMvPjDsix4eap99sRuXdsM5hmr6WYl4KohExj3RyJfJMgheQSZDuEK+Lq5E8bcPiAchTkiFIJyVRigqUvErgfWanB14xEf76jK1pG8b7CD15n4//uTt2C+fMUWNHYf8+8CUENL7gZGraNL65DE15BVRIivWqOHRRM7YzaxkDdz/wXMu3luQrIX5TPTnFQKlYsgePDulNF5gRZRm2pTBtAYGoptbuFlNvGNSnEw=='
set system login user vyos authentication public-keys joshu@UNSC-INFINITY type 'ssh-rsa'
set system login user vyos authentication public-keys joshu@UNSC-PillarOfAutumn key 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCTXQeP1UdpzRYHq7mU+eV/xBCqp22V+hgyfOP/9SljRi49jzCF2OXPalmzqBiRTmjbxqyo8P9Db6c4hOCS2BVPOHO9v8AK2DMbaG5/1cMWRpLUP1TUymVoW48pvJhbVHnbKxDLeIioOE+n2Tx6rlKYxHydAvjkOj9SbDIbqdnqecLOD67AGJr20oM32TGg47VBEGpvY/t6ycMVogcwP3HEjpOCqXNk+SH7tbTvdKJ20+LZNqRzGdotAXW/xbnl4jhh6CuvjzO/CkVuvLCFLn81zOILCPTWs6ohwEk58KVQzCaNpzW81oXiW5ij0LtatoxENZoqNvAHHIy3e9/BHRTRdbFX+Ry/rLuoB9JLzcipmru9w7OQdbZhtQflgqk+YGxcaJFbi7rATHh9LrB9ly4ph4CCRBG+88H4U28qcN7XZY8LRNcErMHqXTjKSFy7DuUXZrOZQ+SD6ghfbGzakHRXmWsciNMqQ25ZefguFb0eTlpY4xZFp0/1YMBBfC7r6bE='
set system login user vyos authentication public-keys joshu@UNSC-PillarOfAutumn type 'ssh-rsa'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level 'info'
set system syslog global facility local7 level 'debug'

set system task-scheduler task backup-config crontab-spec '30 0 * * *'
set system task-scheduler task backup-config executable path '/config/scripts/task-config-backup.sh'
