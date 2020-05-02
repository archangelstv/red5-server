-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2015 at 01:56 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `456`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `module` varchar(100) DEFAULT '',
  `object_model` varchar(100) DEFAULT '',
  `object_id` varchar(100) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `type`, `module`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'ActivitySpaceCreated', '', '', '', '2015-04-12 04:21:21', 1, '2015-04-12 04:21:21', 1),
(2, 'ActivitySpaceCreated', '', '', '', '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(3, 'ActivitySpaceCreated', '', '', '', '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(4, 'ActivitySpaceCreated', '', '', '', '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(5, 'ActivitySpaceCreated', '', '', '', '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(6, 'PostCreated', 'post', 'Post', '1', '2015-04-12 04:21:24', 1, '2015-04-12 04:21:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `space_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `sticked` tinyint(4) DEFAULT NULL,
  `archived` tinytext,
  `space_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_object_model` (`object_model`,`object_id`),
  UNIQUE KEY `index_guid` (`guid`),
  KEY `index_space_id` (`space_id`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `guid`, `object_model`, `object_id`, `visibility`, `sticked`, `archived`, `space_id`, `user_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'fe1b719f-cec9-4405-9620-f3da3c230fde', 'Activity', 1, 1, 0, '0', 1, 1, '2015-04-12 04:21:21', 1, '2015-04-12 04:21:21', 1),
(2, '23e620bf-9a53-49c7-b406-2e639f5fa8af', 'Activity', 2, 1, 0, '0', 2, 1, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(3, '9d6670d4-78e3-4246-88cf-82a20adb1af9', 'Activity', 3, 1, 0, '0', 3, 1, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(4, 'fa4268b9-7e1d-46c7-9284-eb7236878022', 'Activity', 4, 1, 0, '0', 4, 1, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(5, '04e64cd8-8fff-42f8-b6f3-2ead327ba016', 'Activity', 5, 1, 0, '0', 5, 1, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(6, '294fac90-d867-431c-931c-d1c6c892879d', 'Post', 1, 1, 0, '0', 5, 1, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(7, 'f422d0ba-09dc-484c-8ace-c1647c9fe6dc', 'Activity', 6, 1, 0, '0', 5, 1, '2015-04-12 04:21:24', 1, '2015-04-12 04:21:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `object_model` varchar(100) DEFAULT '',
  `object_id` varchar(100) DEFAULT '',
  `file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mime_type` varchar(150) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `space_id` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `can_create_public_spaces` int(1) DEFAULT '1',
  `can_create_private_spaces` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `space_id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `can_create_public_spaces`, `can_create_private_spaces`) VALUES
(1, NULL, 'Artist', 'Artist can upload the music', '2015-04-12 04:17:49', NULL, '2015-04-12 04:17:49', NULL, NULL, 1, 1),
(2, NULL, 'Listener', 'Listening the music', '2015-04-12 04:17:49', NULL, '2015-04-12 04:17:49', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_admin`
--

CREATE TABLE IF NOT EXISTS `group_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_admin` (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE IF NOT EXISTS `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_user_id` int(11) DEFAULT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logging`
--

CREATE TABLE IF NOT EXISTS `logging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `logtime` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`, `module`) VALUES
('m000000_000000_base_activity', 1428792427, 'activity'),
('m000000_000000_base_admin', 1428792439, 'admin'),
('m000000_000000_base_comment', 1428792427, 'comment'),
('m000000_000000_base_core', 1428792424, 'core'),
('m000000_000000_base_file', 1428792426, 'file'),
('m000000_000000_base_like', 1428792426, 'like'),
('m000000_000000_base_notification', 1428792426, 'notification'),
('m000000_000000_base_post', 1428792425, 'post'),
('m000000_000000_base_space', 1428792423, 'space'),
('m000000_000000_base_user', 1428792420, 'user'),
('m000000_000000_base_wall', 1428792424, 'wall'),
('m131023_164513_initial', 1428792423, 'user'),
('m131023_165411_initial', 1428792424, 'space'),
('m131023_165625_initial', 1428792424, 'wall'),
('m131023_165755_initial', 1428792425, 'core'),
('m131023_165835_initial', 1428792425, 'post'),
('m131023_170033_initial', 1428792426, 'notification'),
('m131023_170135_initial', 1428792426, 'like'),
('m131023_170159_initial', 1428792426, 'file'),
('m131023_170253_initial', 1428792427, 'comment'),
('m131023_170339_initial', 1428792427, 'activity'),
('m131203_110444_oembed', 1428792428, 'core'),
('m131213_165552_user_optimize', 1428792433, 'user'),
('m140226_111945_ldap', 1428792435, 'core'),
('m140303_125031_password', 1428792436, 'user'),
('m140304_142711_memberautoadd', 1428792436, 'space'),
('m140321_000917_content', 1428792437, 'core'),
('m140324_170617_membership', 1428792437, 'space'),
('m140507_150421_create_settings_table', 1428792437, 'user'),
('m140507_171527_create_settings_table', 1428792438, 'space'),
('m140512_141414_i18n_profilefields', 1428792439, 'user'),
('m140513_180317_createlogging', 1428792439, 'admin'),
('m140701_000611_profile_genderfield', 1428792439, 'user'),
('m140701_074404_protect_default_profilefields', 1428792440, 'user'),
('m140702_143912_notify_notification_unify', 1428792440, 'wall'),
('m140703_104527_profile_birthdayfield', 1428792440, 'user'),
('m140704_080659_installationid', 1428792440, 'admin'),
('m140705_065525_emailing_settings', 1428792441, 'user'),
('m140706_135210_lastlogin', 1428792441, 'user'),
('m140829_122906_delete', 1428792442, 'user'),
('m140830_145504_following', 1428792444, 'core'),
('m140901_080147_indizies', 1428792445, 'like'),
('m140901_080432_indices', 1428792445, 'file'),
('m140901_112246_addState', 1428792446, 'space'),
('m140901_153403_addState', 1428792448, 'user'),
('m140901_170329_group_create_space', 1428792448, 'user'),
('m140902_091234_session_key_length', 1428792449, 'user'),
('m140907_140822_zip_field_to_text', 1428792449, 'user'),
('m140930_205511_fix_default', 1428792449, 'activity'),
('m140930_205859_fix_default', 1428792450, 'like'),
('m140930_210142_fix_default', 1428792450, 'file'),
('m140930_210635_fix_default', 1428792451, 'user'),
('m140930_212528_fix_default', 1428792452, 'notification'),
('m141015_173305_follow_notifications', 1428792452, 'core'),
('m141019_093319_mentioning', 1428792453, 'user'),
('m141020_162639_fix_default', 1428792454, 'core'),
('m141020_193920_rm_alsocreated', 1428792454, 'comment'),
('m141020_193931_rm_alsoliked', 1428792454, 'like'),
('m141021_162639_oembed_setting', 1428792455, 'core'),
('m141022_094635_addDefaults', 1428792455, 'space'),
('m141031_140056_cleanup_profiles', 1428792455, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `module_enabled`
--

CREATE TABLE IF NOT EXISTS `module_enabled` (
  `module_id` varchar(100) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `source_object_model` varchar(100) DEFAULT NULL,
  `source_object_id` int(11) DEFAULT NULL,
  `target_object_model` varchar(100) DEFAULT NULL,
  `target_object_id` int(11) DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `emailed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_2trash` text,
  `message` text,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `message_2trash`, `message`, `url`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Yay! I''ve just installed HumHub :-)', NULL, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `birthday_hide_year` int(1) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `about` text,
  `phone_private` varchar(255) DEFAULT NULL,
  `phone_work` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `im_skype` varchar(255) DEFAULT NULL,
  `im_msn` varchar(255) DEFAULT NULL,
  `im_icq` int(11) DEFAULT NULL,
  `im_xmpp` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_facebook` varchar(255) DEFAULT NULL,
  `url_linkedin` varchar(255) DEFAULT NULL,
  `url_xing` varchar(255) DEFAULT NULL,
  `url_youtube` varchar(255) DEFAULT NULL,
  `url_vimeo` varchar(255) DEFAULT NULL,
  `url_flickr` varchar(255) DEFAULT NULL,
  `url_myspace` varchar(255) DEFAULT NULL,
  `url_googleplus` varchar(255) DEFAULT NULL,
  `url_twitter` varchar(255) DEFAULT NULL,
  `wordpress_blog_link` varchar(255) DEFAULT NULL,
  `featured_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `title`, `gender`, `street`, `zip`, `city`, `country`, `state`, `birthday_hide_year`, `birthday`, `about`, `phone_private`, `phone_work`, `mobile`, `fax`, `im_skype`, `im_msn`, `im_icq`, `im_xmpp`, `url`, `url_facebook`, `url_linkedin`, `url_xing`, `url_youtube`, `url_vimeo`, `url_flickr`, `url_myspace`, `url_googleplus`, `url_twitter`, `wordpress_blog_link`, `featured_user`) VALUES
(1, 'admin', 'cogzidel', 'System Administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

CREATE TABLE IF NOT EXISTS `profile_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_field_category_id` int(11) NOT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `field_type_class` varchar(255) NOT NULL,
  `field_type_config` text,
  `internal_name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `required` tinyint(4) DEFAULT NULL,
  `show_at_registration` tinyint(4) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_attribute` varchar(255) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_profile_field_category` (`profile_field_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `profile_field`
--

INSERT INTO `profile_field` (`id`, `profile_field_category_id`, `module_id`, `field_type_class`, `field_type_config`, `internal_name`, `title`, `description`, `sort_order`, `required`, `show_at_registration`, `editable`, `visible`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_attribute`, `translation_category`, `is_system`) VALUES
(1, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":20,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'firstname', 'Firstname', NULL, 100, 1, 1, 1, 1, '2015-04-12 04:17:38', NULL, '2015-04-12 04:17:38', NULL, 'givenName', NULL, 1),
(2, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":30,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'lastname', 'Lastname', NULL, 200, 1, 1, 1, 1, '2015-04-12 04:17:38', NULL, '2015-04-12 04:17:38', NULL, 'sn', NULL, 1),
(3, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":50,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'title', 'Title', NULL, 300, NULL, 0, 1, 1, '2015-04-12 04:17:38', NULL, '2015-04-12 04:17:38', NULL, 'title', NULL, 1),
(4, 1, NULL, 'ProfileFieldTypeSelect', '{"options":"male=>Male\\nfemale=>Female\\ncustom=>Custom"}', 'gender', 'Gender', NULL, 300, NULL, 0, 1, 1, '2015-04-12 04:17:39', NULL, '2015-04-12 04:17:39', NULL, NULL, NULL, 1),
(5, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":150,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'street', 'Street', NULL, 400, NULL, 0, 1, 1, '2015-04-12 04:17:39', NULL, '2015-04-12 04:17:39', NULL, NULL, NULL, 1),
(6, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":10,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'zip', 'Zip', NULL, 500, NULL, 0, 1, 1, '2015-04-12 04:17:39', NULL, '2015-04-12 04:17:39', NULL, NULL, NULL, 1),
(7, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'city', 'City', NULL, 600, NULL, 0, 1, 1, '2015-04-12 04:17:40', NULL, '2015-04-12 04:17:40', NULL, NULL, NULL, 1),
(8, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'country', 'Country', NULL, 700, NULL, 0, 1, 1, '2015-04-12 04:17:40', NULL, '2015-04-12 04:17:40', NULL, NULL, NULL, 1),
(9, 1, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'state', 'State', NULL, 800, NULL, 0, 1, 1, '2015-04-12 04:17:40', NULL, '2015-04-12 04:17:40', NULL, NULL, NULL, 1),
(10, 1, NULL, 'ProfileFieldTypeBirthday', '{"showTimePicker":false}', 'birthday', 'Birthday', NULL, 900, NULL, 0, 1, 1, '2015-04-12 04:17:41', NULL, '2015-04-12 04:17:41', NULL, NULL, NULL, 1),
(11, 1, NULL, 'ProfileFieldTypeTextArea', '[]', 'about', 'About', NULL, 900, NULL, 0, 1, 1, '2015-04-12 04:17:41', NULL, '2015-04-12 04:17:41', NULL, NULL, NULL, 1),
(12, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'phone_private', 'Phone Private', NULL, 100, NULL, 0, 1, 1, '2015-04-12 04:17:41', NULL, '2015-04-12 04:17:41', NULL, NULL, NULL, 1),
(13, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'phone_work', 'Phone Work', NULL, 200, NULL, 0, 1, 1, '2015-04-12 04:17:42', NULL, '2015-04-12 04:17:42', NULL, NULL, NULL, 1),
(14, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'mobile', 'Mobile', NULL, 300, NULL, 0, 1, 1, '2015-04-12 04:17:42', NULL, '2015-04-12 04:17:42', NULL, NULL, NULL, 1),
(15, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'fax', 'Fax', NULL, 400, NULL, 0, 1, 1, '2015-04-12 04:17:42', NULL, '2015-04-12 04:17:42', NULL, NULL, NULL, 1),
(16, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'im_skype', 'Skype Nickname', NULL, 500, NULL, 0, 1, 1, '2015-04-12 04:17:43', NULL, '2015-04-12 04:17:43', NULL, NULL, NULL, 1),
(17, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null}', 'im_msn', 'MSN', NULL, 600, NULL, 0, 1, 1, '2015-04-12 04:17:43', NULL, '2015-04-12 04:17:43', NULL, NULL, NULL, 1),
(18, 2, NULL, 'ProfileFieldTypeNumber', '{"maxValue":null,"minValue":null}', 'im_icq', 'ICQ Number', NULL, 700, NULL, 0, 1, 1, '2015-04-12 04:17:43', NULL, '2015-04-12 04:17:43', NULL, NULL, NULL, 1),
(19, 2, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"email","default":null,"regexp":null,"regexpErrorMessage":null}', 'im_xmpp', 'XMPP Jabber Address', NULL, 800, NULL, 0, 1, 1, '2015-04-12 04:17:44', NULL, '2015-04-12 04:17:44', NULL, NULL, NULL, 1),
(20, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url', 'Url', NULL, 100, NULL, 0, 1, 1, '2015-04-12 04:17:44', NULL, '2015-04-12 04:17:44', NULL, NULL, NULL, 1),
(21, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_facebook', 'Facebook URL', NULL, 200, NULL, 0, 1, 1, '2015-04-12 04:17:45', NULL, '2015-04-12 04:17:45', NULL, NULL, NULL, 1),
(22, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_linkedin', 'LinkedIn URL', NULL, 300, NULL, 0, 1, 1, '2015-04-12 04:17:45', NULL, '2015-04-12 04:17:45', NULL, NULL, NULL, 1),
(23, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_xing', 'Xing URL', NULL, 400, NULL, 0, 1, 1, '2015-04-12 04:17:45', NULL, '2015-04-12 04:17:45', NULL, NULL, NULL, 1),
(24, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_youtube', 'Youtube URL', NULL, 500, NULL, 0, 1, 1, '2015-04-12 04:17:46', NULL, '2015-04-12 04:17:46', NULL, NULL, NULL, 1),
(25, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_vimeo', 'Vimeo URL', NULL, 600, NULL, 0, 1, 1, '2015-04-12 04:17:46', NULL, '2015-04-12 04:17:46', NULL, NULL, NULL, 1),
(26, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_flickr', 'Flickr URL', NULL, 700, NULL, 0, 1, 1, '2015-04-12 04:17:46', NULL, '2015-04-12 04:17:46', NULL, NULL, NULL, 1),
(27, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_myspace', 'MySpace URL', NULL, 800, NULL, 0, 1, 1, '2015-04-12 04:17:47', NULL, '2015-04-12 04:17:47', NULL, NULL, NULL, 1),
(28, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_googleplus', 'Google+ URL', NULL, 900, NULL, 0, 1, 1, '2015-04-12 04:17:48', NULL, '2015-04-12 04:17:48', NULL, NULL, NULL, 1),
(29, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'url_twitter', 'Twitter URL', NULL, 1000, NULL, 0, 1, 1, '2015-04-12 04:17:48', NULL, '2015-04-12 04:17:48', NULL, NULL, NULL, 1),
(30, 3, NULL, 'ProfileFieldTypeText', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null}', 'wordpress_blog_link', 'Wordpress blog link', NULL, 1100, NULL, 0, 1, 1, '2015-04-12 04:17:48', NULL, '2015-04-12 04:17:48', NULL, NULL, NULL, 1),
(31, 1, NULL, 'ProfileFieldTypeSelect', '{"options":"1=>YES\\u0000=>NO"}', 'featured_user', 'Featured user', NULL, 300, NULL, 0, 1, 1, '2015-04-12 04:17:49', NULL, '2015-04-12 04:17:49', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_field_category`
--

CREATE TABLE IF NOT EXISTS `profile_field_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `module_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `profile_field_category`
--

INSERT INTO `profile_field_category` (`id`, `title`, `description`, `sort_order`, `module_id`, `visibility`, `created_at`, `created_by`, `updated_at`, `updated_by`, `translation_category`, `is_system`) VALUES
(1, 'General', '', 100, NULL, 1, '2015-04-12 04:17:37', NULL, '2015-04-12 04:17:37', NULL, NULL, 1),
(2, 'Communication', '', 200, NULL, 1, '2015-04-12 04:17:37', NULL, '2015-04-12 04:17:37', NULL, NULL, 1),
(3, 'Social bookmarks', '', 300, NULL, 1, '2015-04-12 04:17:37', NULL, '2015-04-12 04:17:37', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `value_text` text,
  `module_id` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`, `value_text`, `module_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'oembedProviders', NULL, '{"vimeo.com":"http:\\/\\/vimeo.com\\/api\\/oembed.json?scheme=https&url=%url%&format=json&maxwidth=450","youtube.com":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","youtu.be":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","soundcloud.com":"https:\\/\\/soundcloud.com\\/oembed?url=%url%&format=json&maxwidth=450","slideshare.net":"https:\\/\\/www.slideshare.net\\/api\\/oembed\\/2?url=%url%&format=json&maxwidth=450"}', NULL, NULL, NULL, NULL, NULL),
(2, 'defaultVisibility', '1', NULL, 'space', NULL, NULL, NULL, NULL),
(3, 'defaultJoinPolicy', '1', NULL, 'space', NULL, NULL, NULL, NULL),
(4, 'name', 'Beatz', NULL, NULL, '2015-04-12 04:17:35', 0, '2015-04-12 04:17:35', 0),
(5, 'baseUrl', 'http://localhost/beatz', NULL, NULL, '2015-04-12 04:17:36', 0, '2015-04-12 04:17:36', 0),
(6, 'paginationSize', '10', NULL, NULL, '2015-04-12 04:17:36', 0, '2015-04-12 04:17:36', 0),
(7, 'displayNameFormat', '{profile.firstname} {profile.lastname}', NULL, NULL, '2015-04-12 04:17:36', 0, '2015-04-12 04:17:36', 0),
(8, 'authInternal', '1', NULL, 'authentication', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(9, 'authLdap', '0', NULL, 'authentication', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(10, 'refreshUsers', '1', NULL, 'authentication_ldap', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(11, 'needApproval', '0', NULL, 'authentication_internal', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(12, 'anonymousRegistration', '1', NULL, 'authentication_internal', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(13, 'internalUsersCanInvite', '1', NULL, 'authentication_internal', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(14, 'transportType', 'php', NULL, 'mailing', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(15, 'systemEmailAddress', 'social@example.com', NULL, 'mailing', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(16, 'systemEmailName', 'Beatz', NULL, 'mailing', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(17, 'receive_email_activities', '1', NULL, 'mailing', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(18, 'receive_email_notifications', '2', NULL, 'mailing', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(19, 'maxFileSize', '1048576', NULL, 'file', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(20, 'maxPreviewImageWidth', '200', NULL, 'file', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(21, 'maxPreviewImageHeight', '200', NULL, 'file', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(22, 'hideImageFileInfo', '0', NULL, 'file', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(23, 'type', 'CFileCache', NULL, 'cache', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(24, 'expireTime', '3600', NULL, 'cache', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(25, 'installationId', '0152fc4f5315ea898b8e3c18b2091135', NULL, 'admin', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(26, 'theme', 'construction_yii_theme', NULL, NULL, '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(27, 'spaceOrder', '0', NULL, 'space', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(28, 'enable', '1', NULL, 'tour', '2015-04-12 04:17:37', 0, '2015-04-12 04:17:37', 0),
(29, 'secret', 'f5ddb699-5db6-419d-983e-f61884256cfd', NULL, NULL, '2015-04-12 04:21:20', 0, '2015-04-12 04:21:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE IF NOT EXISTS `space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `website` varchar(45) DEFAULT NULL,
  `join_policy` tinyint(4) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `auto_add_new_members` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`id`, `guid`, `wall_id`, `name`, `description`, `website`, `join_policy`, `visibility`, `status`, `tags`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `auto_add_new_members`) VALUES
(1, '68a597b4-1be7-495a-abd5-b5d3afb8ce30', 2, 'Classic', 'Classic music', NULL, 2, 2, 1, NULL, '2015-04-12 04:21:21', 1, '2015-04-12 04:21:21', 1, NULL, 1),
(2, 'de842486-8248-420d-97ff-58e48c5d8703', 3, 'Club', 'Club music', NULL, 2, 2, 1, NULL, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1, NULL, 1),
(3, '21acb8a1-8037-42de-ae32-c19e98a4d832', 4, 'Folk music', 'Folk music', NULL, 2, 2, 1, NULL, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1, NULL, 1),
(4, '5876616b-ac8d-439e-b83c-98e07f0f2c60', 5, 'Jazz music', 'Jazz music', NULL, 2, 2, 1, NULL, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1, NULL, 1),
(5, 'a553182b-100d-44d8-96ce-1202eb7da875', 6, 'Pop music', 'Pop music', NULL, 2, 2, 1, NULL, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `space_membership`
--

CREATE TABLE IF NOT EXISTS `space_membership` (
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `originator_user_id` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `request_message` text,
  `last_visit` datetime DEFAULT NULL,
  `invite_role` tinyint(4) DEFAULT NULL,
  `admin_role` tinyint(4) DEFAULT NULL,
  `share_role` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`space_id`,`user_id`),
  KEY `index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `space_membership`
--

INSERT INTO `space_membership` (`space_id`, `user_id`, `originator_user_id`, `status`, `request_message`, `last_visit`, `invite_role`, `admin_role`, `share_role`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, NULL, 3, NULL, '2015-04-12 04:21:21', 1, 1, 1, '2015-04-12 04:21:21', 1, '2015-04-12 04:21:21', 1),
(2, 1, NULL, 3, NULL, '2015-04-12 04:21:22', 1, 1, 1, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(3, 1, NULL, 3, NULL, '2015-04-12 04:21:22', 1, 1, 1, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(4, 1, NULL, 3, NULL, '2015-04-12 04:21:23', 1, 1, 1, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(5, 1, NULL, 3, NULL, '2015-04-12 04:21:24', 1, 1, 1, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `space_module`
--

CREATE TABLE IF NOT EXISTS `space_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL,
  `space_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `space_setting`
--

CREATE TABLE IF NOT EXISTS `space_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `space_id` int(10) DEFAULT NULL,
  `module_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_space_setting` (`space_id`,`module_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `url_oembed`
--

CREATE TABLE IF NOT EXISTS `url_oembed` (
  `url` varchar(255) NOT NULL,
  `preview` text NOT NULL,
  PRIMARY KEY (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `auth_mode` varchar(10) NOT NULL,
  `tags` text,
  `language` varchar(5) DEFAULT NULL,
  `last_activity_email` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_username` (`username`),
  UNIQUE KEY `unique_guid` (`guid`),
  UNIQUE KEY `unique_wall_id` (`wall_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `guid`, `wall_id`, `group_id`, `status`, `super_admin`, `username`, `email`, `auth_mode`, `tags`, `language`, `last_activity_email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`) VALUES
(1, 'e341d74f-5865-4dfe-9bde-41bb886a5049', 1, 1, 1, 1, 'admin', 'admin@cogziel.com', 'local', NULL, '', '2015-04-12 04:21:20', '2015-04-12 04:21:20', NULL, '2015-04-12 04:21:20', NULL, '2015-04-12 04:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE IF NOT EXISTS `user_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_notifications` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_user` (`user_id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_follow`
--

INSERT INTO `user_follow` (`id`, `object_model`, `object_id`, `user_id`, `send_notifications`) VALUES
(1, 'Post', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_http_session`
--

CREATE TABLE IF NOT EXISTS `user_http_session` (
  `id` char(255) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_http_session`
--

INSERT INTO `user_http_session` (`id`, `expire`, `user_id`, `data`) VALUES
('f23c9851308212a8c31a971615280d36', 1428794170, NULL, 0x66643761666261356636646339636262346335333339373234393634313731625f5f72657475726e55726c7c733a35333a222f626f777368756c2f626f6264796c616e2e6769742f696e6465782e7068703f723d64617368626f6172642f64617368626f617264223b);

-- --------------------------------------------------------

--
-- Table structure for table `user_invite`
--

CREATE TABLE IF NOT EXISTS `user_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_originator_id` int(11) DEFAULT NULL,
  `space_invite_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_mentioning`
--

CREATE TABLE IF NOT EXISTS `user_mentioning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i_user` (`user_id`),
  KEY `i_object` (`object_model`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_module` (`user_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_password`
--

CREATE TABLE IF NOT EXISTS `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `algorithm` varchar(20) DEFAULT NULL,
  `password` text,
  `salt` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_password`
--

INSERT INTO `user_password` (`id`, `user_id`, `algorithm`, `password`, `salt`, `created_at`) VALUES
(1, 1, 'sha512whirlpool', 'a9192dfddf2463e161c5b439e5252491eae0ec926603293f6c92e22a6e6a1fa7d77999b9ab7ac72dcec3670c0663224f84113b69db32c06e1d0d36ad2e533c9a', 'db57b651-5910-46b5-9d6f-d14368cc9804', '2015-04-12 04:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_setting`
--

CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `module_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_setting` (`user_id`,`module_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wall`
--

CREATE TABLE IF NOT EXISTS `wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `object_model` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wall`
--

INSERT INTO `wall` (`id`, `type`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'User', 'User', 1, '2015-04-12 04:21:20', NULL, '2015-04-12 04:21:20', NULL),
(2, 'Space', 'Space', 1, '2015-04-12 04:21:21', 1, '2015-04-12 04:21:21', 1),
(3, 'Space', 'Space', 2, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(4, 'Space', 'Space', 3, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(5, 'Space', 'Space', 4, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(6, 'Space', 'Space', 5, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wall_entry`
--

CREATE TABLE IF NOT EXISTS `wall_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wall_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wall_entry`
--

INSERT INTO `wall_entry` (`id`, `wall_id`, `content_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 2, 1, '2015-04-12 04:21:21', 1, '2015-04-12 04:21:21', 1),
(2, 3, 2, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(3, 4, 3, '2015-04-12 04:21:22', 1, '2015-04-12 04:21:22', 1),
(4, 5, 4, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(5, 6, 5, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(6, 6, 6, '2015-04-12 04:21:23', 1, '2015-04-12 04:21:23', 1),
(7, 6, 7, '2015-04-12 04:21:24', 1, '2015-04-12 04:21:24', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
