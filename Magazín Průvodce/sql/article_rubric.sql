# MySQL dump 7.1
#
# Host: localhost    Database: zine
#--------------------------------------------------------
# Server version	3.22.32

#
# Table structure for table 'article_rubric'
#
CREATE TABLE article_rubric (
  article_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  rubric_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (rubric_id,article_id)
);
