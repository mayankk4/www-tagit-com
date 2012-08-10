# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.20)
# Database: hachidb
# Generation Time: 2012-06-03 03:31:22 +0530
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `action` varchar(500) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `result` varchar(500) DEFAULT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `memory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `invite_invitees`;

CREATE TABLE `invite_invitees` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `prev_id` varchar(15) DEFAULT NULL,
  `next_id` varchar(15) DEFAULT NULL,
  `date_requested` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_granted_activation` boolean DEFAULT 0,
  `is_activated` boolean DEFAULT 0,
  `activation_code` varchar(50) DEFAULT NULL,
  `date_granted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `invite_invite_codes`;

CREATE TABLE `invite_invite_codes`(
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `count_left` int(20) DEFAULT 0,
  `count_total` int(20) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table adj_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `adj_lists`;

CREATE TABLE `adj_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` int(11) DEFAULT NULL,
  `adjlist` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table errors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `errors`;

CREATE TABLE `errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(100) DEFAULT NULL,
  `message` varchar(1023) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table facebook_avatar_friends
# ------------------------------------------------------------

DROP TABLE IF EXISTS `facebook_avatar_friends`;

CREATE TABLE `facebook_avatar_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_avatar_id` varchar(30) DEFAULT NULL,
  `facebook_friend_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_avatar_id` (`facebook_avatar_id`,`facebook_friend_id`),
  UNIQUE KEY `facebook_avatar_id_2` (`facebook_avatar_id`,`facebook_friend_id`),
  UNIQUE KEY `facebook_avatar_id_3` (`facebook_avatar_id`,`facebook_friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table facebook_avatars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `facebook_avatars`;

CREATE TABLE `facebook_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` varchar(30) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `affiliations` varchar(511) DEFAULT NULL,
  `sex` varchar(7) DEFAULT NULL,
  `hometown_location` varchar(255) DEFAULT NULL,
  `current_location` varchar(255) DEFAULT NULL,
  `education_history` varchar(511) DEFAULT NULL,
  `work_history` varchar(511) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_id` (`facebook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table facebook_linkedin_mappings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `facebook_linkedin_mappings`;

CREATE TABLE `facebook_linkedin_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` varchar(30) DEFAULT NULL,
  `linkedin_id` varchar(30) DEFAULT NULL,
  `map_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_id` (`facebook_id`,`linkedin_id`),
  UNIQUE KEY `facebook_id_2` (`facebook_id`,`linkedin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table fb_app_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fb_app_users`;

CREATE TABLE `fb_app_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) DEFAULT NULL,
  `fb_access_token` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=655 DEFAULT CHARSET=latin1;



# Dump of table fb_update_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fb_update_lists`;

CREATE TABLE `fb_update_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` varchar(30) DEFAULT NULL,
  `fields` varchar(1000) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table fbuers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fbuers`;

CREATE TABLE `fbuers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) DEFAULT NULL,
  `fb_access_token` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table friendships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friendships`;

CREATE TABLE `friendships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1_id` varchar(30) DEFAULT NULL,
  `user2_id` varchar(30) DEFAULT NULL,
  `fb` varchar(1) DEFAULT NULL,
  `li` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table interesting_connections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `interesting_connections`;

CREATE TABLE `interesting_connections` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Celeb_name` varchar(256) NOT NULL,
  `Celeb_id` varchar(256) NOT NULL,
  `Celeb_profile` varchar(512) NOT NULL,
  `Celeb_picture` varchar(1024) NOT NULL,
  `Connector_name` varchar(256) NOT NULL,
  `Connector_liid` varchar(256) NOT NULL,
  `Connector_fbid` varchar(256) NOT NULL,
  `Connection_str` varchar(1024) NOT NULL,
  `Name_str` varchar(1024) NOT NULL,
  `Connection_type` varchar(16) NOT NULL,
  `Description` varchar(512) NOT NULL,
  `Picture_str` varchar(1024) DEFAULT ' =>  ',
  `work` varchar(5000) DEFAULT NULL,
  `education` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;




# Dump of table invite_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invite_codes`;

CREATE TABLE `invite_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(100) NOT NULL,
  `guest_email` varchar(100) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `count` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table invitees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invitees`;

CREATE TABLE `invitees` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `prev_id` varchar(15) DEFAULT NULL,
  `next_id` varchar(15) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table linkedin_avatar_friends
# ------------------------------------------------------------

DROP TABLE IF EXISTS `linkedin_avatar_friends`;

CREATE TABLE `linkedin_avatar_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkedin_avatar_id` varchar(30) DEFAULT NULL,
  `linkedin_friend_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `linkedin_avatar_id` (`linkedin_avatar_id`,`linkedin_friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table linkedin_avatars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `linkedin_avatars`;

CREATE TABLE `linkedin_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkedin_id` varchar(30) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `profile_url` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `area` varchar(127) DEFAULT NULL,
  `country` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `linkedin_id` (`linkedin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table people
# ------------------------------------------------------------

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hachi_id` varchar(30) DEFAULT NULL,
  `facebook_id` varchar(30) DEFAULT NULL,
  `linkedin_id` varchar(30) DEFAULT NULL,
  `facebook_name` varchar(255) DEFAULT NULL,
  `linkedin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table search_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `search_log`;

CREATE TABLE `search_log` (
  `query_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `query` varchar(100) DEFAULT NULL,
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`query_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table search_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `search_logs`;

CREATE TABLE `search_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `query` varchar(100) DEFAULT NULL,
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  `education` varchar(1024) DEFAULT NULL,
  `company` varchar(1024) DEFAULT NULL,
  `location` varchar(1024) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `industry` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table shared_paths
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shared_paths`;

CREATE TABLE `shared_paths` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `paths` text NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `isModerated` int(11) NOT NULL COMMENT '-1 Not Moderated, 0 Rejected, 1 Moderated',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `statistics`;

CREATE TABLE `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `nRequests` int(11) DEFAULT NULL,
  `nUsers` int(11) DEFAULT NULL,
  `nFBAccounts` int(11) DEFAULT NULL,
  `nLIAccounts` int(11) DEFAULT NULL,
  `nLogins` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sync_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sync_logs`;

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `facebook_id` varchar(30) DEFAULT NULL,
  `fb_last_sync_time` timestamp NULL DEFAULT NULL,
  `fb_sync_status` int(11) NOT NULL DEFAULT '0',
  `linkedin_id` varchar(30) DEFAULT NULL,
  `li_last_sync_time` timestamp NULL DEFAULT NULL,
  `li_sync_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sync_queue_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sync_queue_lists`;

CREATE TABLE `sync_queue_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) NOT NULL,
  `network` varchar(10) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  `status` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `correspondence_email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `terms` varchar(1) DEFAULT 'Y',
  `facebook_id` varchar(30) DEFAULT NULL,
  `linkedin_id` varchar(30) DEFAULT NULL,
  `twitter_id` varchar(30) DEFAULT NULL,
  `fb_access_token` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  `li_access_key` varchar(100) DEFAULT NULL,
  `li_access_secret` varchar(100) DEFAULT NULL,
  `li_token` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  `li_secret` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  `li_token_creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `li_token_validity` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tw_token` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  `tw_secret` varchar(1024) DEFAULT 'TOKEN_NOT_AVAILABLE',
  `old_facebook` varchar(100) DEFAULT NULL,
  `old_linkedin` varchar(100) DEFAULT NULL,
  `old_twitter` varchar(30) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_mod_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,

  `perm` varchar(2) DEFAULT NULL,
  `tempcreationid` varchar(100) DEFAULT NULL,

  `hachi_id` varchar(30) DEFAULT NULL,
  `li_confirmed` varchar(6) DEFAULT NULL,
  `sex` varchar(7) DEFAULT NULL,
  `hometown_location` varchar(511) DEFAULT NULL,
  `current_location` varchar(511) DEFAULT NULL,
  `work_history` text,
  `education_history` text,
  `fb_perms` varchar(500) DEFAULT NULL,
  `deactivate_fb` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


alter table `users` drop `li_token_validity`,
  drop `hachi_id`,
  drop `li_confirmed`,
  drop `sex`,
  drop `hometown_location`,
  drop `current_location`,
  drop `work_history`,
  drop `education_history`,
  drop `fb_perms`,
  drop `deactivate_fb`;





  ALTER TABLE `users`
    add column `username` varchar(50) COLLATE utf8_bin NOT NULL,
    add column `activated` tinyint(1) NOT NULL DEFAULT '1',
    add column `banned` tinyint(1) NOT NULL DEFAULT '0',
    add column `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    add column `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
    add column `new_password_requested` datetime DEFAULT NULL,
    add column `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
    add column `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
    add column `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
    add column `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00';

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
