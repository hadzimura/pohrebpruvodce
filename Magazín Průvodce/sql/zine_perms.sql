# MySQL dump 7.1
#
# Host: localhost    Database: zine
#--------------------------------------------------------
# Server version	3.22.32

#
# Table structure for table 'zine_perms'
#
CREATE TABLE zine_perms (
  user_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  item_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  type enum('zine','rubric') DEFAULT 'zine' NOT NULL,
  perms set('read','write','edit','admin','publish'),
  PRIMARY KEY (type,user_id,item_id),
  KEY user_id (user_id)
);
