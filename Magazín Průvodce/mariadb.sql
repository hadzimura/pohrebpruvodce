USE mysql;
create database magazin_pruvodce;
CREATE USER IF NOT EXISTS 'pp'@'localhost' IDENTIFIED BY 'pp';
GRANT ALL PRIVILEGES ON *.* TO pp@localhost;
FLUSH PRIVILEGES;
