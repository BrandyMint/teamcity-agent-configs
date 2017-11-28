export VALUE="$(date --rfc-3339=ns)"
echo $VALUE
zabbix_sender \
    --zabbix-server=zabbix.brandymint.ru \
    --host="office.brandymint.ru" \
    --key="test.timestamp" \
    --value="${VALUE}"
