# MySQL dump 7.1
#
# Host: localhost    Database: zine
#--------------------------------------------------------
# Server version	3.22.32

#
# Table structure for table 'article'
#
CREATE TABLE article (
  id mediumint(8) unsigned DEFAULT '0' NOT NULL auto_increment,
  author_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  rubric_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  corrector_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  sign varchar(255) DEFAULT '' NOT NULL,
  title varchar(255) DEFAULT '' NOT NULL,
  subtitle varchar(255) DEFAULT '' NOT NULL,
  perex text NOT NULL,
  body text NOT NULL,
  footer text NOT NULL,
  redirect varchar(255) DEFAULT '' NOT NULL,
  rate tinyint(3) unsigned DEFAULT '0' NOT NULL,
  impressions mediumint(8) unsigned DEFAULT '0' NOT NULL,
  posted datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
  published datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
  type enum('visible','public') DEFAULT 'public' NOT NULL,
  status enum('hidden','public') DEFAULT 'hidden' NOT NULL,
  PRIMARY KEY (id),
  KEY rubric_id (rubric_id),
  KEY author_id (author_id),
  KEY posted (posted),
  KEY published (published)
);
