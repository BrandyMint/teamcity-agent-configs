docker exec -it 86b1faaffc09  mysqldump --user="zabbix" --password="my_password" zabbix | gzip > ./backups/zabbix.sql.gz
