#!bash
echo ">>>DATABASE<<< startup script"
exec mysqld --user=mysql
echo ">>>DATABASE<<< now init database and users"
mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE wpress;
CREATE USER 'sysop'@'frontend' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON wpress.* TO 'sysop'@'frontend';
FLUSH PRIVILEGES;
MYSQL_SCRIPT
echo "All setup for Database !"
