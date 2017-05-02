mysql -uroot -proot computer-database-db < /etc/mysql/conf.d/1-SCHEMA.sql
mysql -uroot -proot computer-database-db < /etc/mysql/conf.d/2-PRIVILEGES.sql
mysql -uroot -proot computer-database-db < /etc/mysql/conf.d/3-ENTRIES.sql