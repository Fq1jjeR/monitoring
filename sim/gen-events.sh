#!/bin/sh
TS=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
LINE="<187>$TS sim-router sshd[431]: Failed password for invalid user admin from 10.0.0.77 port 51234 ssh2"
echo "$LINE" >> /var/log/equipment.log
zabbix_sender -z server -s sim-router -k syslog.in -o "$LINE" > /dev/null
snmptrap -v 2c -c public snmptraps 0 IF-MIB::linkDown IF-MIB::ifIndex i 2 IF-MIB::ifDescr s "GigabitEthernet0/1"
