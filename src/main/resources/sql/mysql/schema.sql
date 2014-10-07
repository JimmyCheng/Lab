--CREATE SCHEMA `performance` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
drop table if exists ss_group;
drop table if exists ss_platform;
drop table if exists ss_scenario;
drop table if exists ss_benchmark;
drop table if exists ss_performance;

CREATE TABLE IF NOT EXISTS `ss_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `position` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7;


CREATE TABLE IF NOT EXISTS `ss_platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `ss_scenario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `description` varchar(255),
  `group_id` int(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

CREATE TABLE IF NOT EXISTS `ss_benchmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` int(11) NOT NULL,
  `version` varchar(10) NOT NULL,
  `scenario_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;


CREATE TABLE IF NOT EXISTS `ss_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenario_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `version` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `platform_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;


