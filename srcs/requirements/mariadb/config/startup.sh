#!bash
echo "All setup for Database !"
exec mysqld --user=mysql --init-file=/tmp/dbinit.sql
