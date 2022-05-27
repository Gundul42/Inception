/* create the database */
CREATE DATABASE wpress;

/* create a basic user */
CREATE USER 'dummy'@'frontend.inception' IDENTIFIED BY '123';

/* create an admin user with all privs */
GRANT ALL PRIVILEGES ON wpress.* TO 'wp'@'frontend.inception' IDENTIFIED BY '12345' with grant option;

/* update all privs */
FLUSH PRIVILEGES;
