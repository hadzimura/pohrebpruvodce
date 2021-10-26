# MySQL dump 7.1
#
# Host: localhost    Database: zine
#--------------------------------------------------------
# Server version	3.22.32

#
# Table structure for table 'zine'
#
CREATE TABLE zine (
  id mediumint(8) unsigned DEFAULT '0' NOT NULL auto_increment,
  owner_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  uri_name varchar(24) DEFAULT '',
  name varchar(24) DEFAULT '' NOT NULL,
  descr varchar(255) DEFAULT '' NOT NULL,
  created datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
  pbl_perm enum('write','edit','admin') DEFAULT 'admin' NOT NULL,
  PRIMARY KEY (id),
  KEY owner_id (owner_id),
  UNIQUE uri_name (uri_name)
);
