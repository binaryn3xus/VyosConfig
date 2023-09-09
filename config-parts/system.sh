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

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level 'info'
set system syslog global facility local7 level 'debug'

set system task-scheduler task backup-config crontab-spec '30 0 * * *'
set system task-scheduler task backup-config executable path '/config/scripts/task-config-backup.sh'
