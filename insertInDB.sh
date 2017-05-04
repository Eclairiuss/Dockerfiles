mysql -uroot -proot -h 0.0.0.0 -P 3306 < 1-SCHEMA.sql
mysql -uroot -proot -h 0.0.0.0 -P 3306 computer-database-db < 2-PRIVILEGES.sql
mysql -uroot -proot -h 0.0.0.0 -P 3306 computer-database-db < 3-ENTRIES.sql