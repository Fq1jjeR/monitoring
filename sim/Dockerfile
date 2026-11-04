FROM alpine:3.20
RUN apk add --no-cache net-snmp net-snmp-tools zabbix-agent2 zabbix-utils
RUN mkdir -p /var/log && touch /var/log/equipment.log && chmod 666 /var/log/equipment.log
COPY sim/snmpd.conf /etc/snmp/snmpd.conf
COPY sim/zabbix_agent2.conf /etc/zabbix/zabbix_agent2.conf
COPY sim/gen-events.sh /usr/local/bin/gen-events.sh
COPY sim/start-sim.sh /usr/local/bin/start-sim.sh
RUN chmod +x /usr/local/bin/gen-events.sh /usr/local/bin/start-sim.sh
EXPOSE 10050 161
CMD ["start-sim.sh"]
