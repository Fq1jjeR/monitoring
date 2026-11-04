#!/bin/sh
snmpd -c /etc/snmp/snmpd.conf &
zabbix_agent2 -c /etc/zabbix/zabbix_agent2.conf &
while true; do
  /usr/local/bin/gen-events.sh
  sleep 60
done
