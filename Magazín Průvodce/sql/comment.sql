# MySQL dump 7.1
#
# Host: localhost    Database: zine
#--------------------------------------------------------
# Server version	3.22.32

#
# Table structure for table 'comment'
#
CREATE TABLE comment (
  id mediumint(8) unsigned DEFAULT '0' NOT NULL auto_increment,
  author_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  article_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  prev_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  title varchar(128) DEFAULT '' NOT NULL,
  body text NOT NULL,
  posted datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
  email varchar(127) DEFAULT '' NOT NULL,
  sign varchar(127) DEFAULT '' NOT NULL,
  type enum('private','public') DEFAULT 'private' NOT NULL,
  PRIMARY KEY (id),
  KEY author_id (author_id),
  KEY article_id (article_id),
  KEY prev_id (prev_id)
);
