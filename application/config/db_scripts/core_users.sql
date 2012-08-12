# Create table central_users
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `central_users`;

CREATE TABLE IF NOT EXISTS `central_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` varchar(50) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table bands
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `bands`;

CREATE TABLE IF NOT EXISTS `bands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `band_id` varchar(50) NOT NULL,
  `is_allocated` boolean DEFAULT false,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Create table organizations
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `organizations`;

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fb_app_id` varchar(1024) DEFAULT NULL,
  `subdomain_url` varchar(100) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table readers
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `readers`;

CREATE TABLE IF NOT EXISTS `readers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` varchar(50) NOT NULL,
  `is_allocated` boolean DEFAULT false,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Create table users_bands
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `users_bands`;

CREATE TABLE IF NOT EXISTS `users_bands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (user_id) REFERENCES central_users(id) ON DELETE CASCADE,
  FOREIGN KEY (band_id) REFERENCES bands(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table organizations_users
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `organizations_users`;

CREATE TABLE IF NOT EXISTS `organizations_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT '2012-12-12 00:00:00' ,
  PRIMARY KEY (`id`),
  FOREIGN KEY (organization_id) REFERENCES organizations(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES central_users(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


# Create table organizations_readers
# ------------------------------------------------------------

-- DROP TABLE IF EXISTS `organizations_readers`;

CREATE TABLE IF NOT EXISTS `organizations_readers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (organization_id) REFERENCES organizations(id) ON DELETE CASCADE,
  FOREIGN KEY (reader_id) REFERENCES readers(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;