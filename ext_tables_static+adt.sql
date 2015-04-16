# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_language"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_language;
CREATE TABLE tx_ecomtoolbox_domain_model_language (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  sys_language int(11) NOT NULL default '0',
  flag varchar(20) NOT NULL default '',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (uid),
  KEY parent (pid)
);


INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('1', '0', 'english', '0', 'us', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('2', '0', 'français', '0', 'fr', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('3', '0', 'español', '0', 'es', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('4', '0', 'pу́сски', '0', 'ru', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('5', '0', 'português', '0', 'pt', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('6', '0', 'english', '0', 'gb', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('7', '0', 'deutsch', '1', 'de', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('8', '0', 'nederlands', '0', 'nl', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('9', '0', 'italiano', '0', 'it', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('10', '0', 'svenska', '0', 'se', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('11', '0', '汉语', '0', 'cn', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('12', '0', 'ภาษาไทย', '0', 'tw', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('13', '0', 'العربية', '0', 'sa', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('14', '0', 'Български', '0', 'bg', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('15', '0', 'dansk', '0', 'dk', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('16', '0', 'suomi', '0', 'fi', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('17', '0', '한국어', '0', 'kr', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('18', '0', 'македонски', '0', 'mk', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('19', '0', 'norsk', '0', 'no', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('20', '0', 'српски', '0', 'rs', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('21', '0', 'türkçe', '0', 'tr', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('22', '0', 'magyar', '0', 'hu', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('23', '0', 'lietuvių', '0', 'lt', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('24', '0', 'eesti', '0', 'ee', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('25', '0', 'polski', '0', 'pl', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('26', '0', 'român', '0', 'ro', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('27', '0', 'čeština', '0', 'cz', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('28', '0', 'português do brasil', '0', 'br', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('29', '0', '日本の', '0', 'jp', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('30', '0', 'english', '0', 'au', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('31', '0', 'english', '0', 'ca', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('32', '0', 'english', '0', 'za', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('33', '0', 'multilingual', '0', 'multiple', '0', '0', '1');


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_region"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_region;
CREATE TABLE tx_ecomtoolbox_domain_model_region (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  type int(11) NOT NULL default '0',
  iso_code_a2 varchar(255) NOT NULL default '',
  iso_code_a3 varchar(255) NOT NULL default '',
  flag_icon_name varchar(255) NOT NULL default '',
  verified tinyint(1) unsigned NOT NULL default '0',
  countries text NOT NULL,
  territory int(11) unsigned default '0',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  deleted tinyint(4) unsigned NOT NULL default '0',
  hidden tinyint(4) unsigned NOT NULL default '0',
  starttime int(11) unsigned NOT NULL default '0',
  endtime int(11) unsigned NOT NULL default '0',
  t3ver_oid int(11) NOT NULL default '0',
  t3ver_id int(11) NOT NULL default '0',
  t3ver_wsid int(11) NOT NULL default '0',
  t3ver_label varchar(255) NOT NULL default '',
  t3ver_state tinyint(4) NOT NULL default '0',
  t3ver_stage int(11) NOT NULL default '0',
  t3ver_count int(11) NOT NULL default '0',
  t3ver_tstamp int(11) NOT NULL default '0',
  t3ver_move_id int(11) NOT NULL default '0',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumblob,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY t3ver_oid (t3ver_oid,t3ver_wsid),
  KEY language (l10n_parent,sys_language_uid)
);


INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('1', '0', 'Afghanistan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('2', '0', 'Åland', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('3', '0', 'Albania', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('4', '0', 'Algeria', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('5', '0', 'American Samoa', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('6', '0', 'Andorra', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('7', '0', 'Angola', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('8', '0', 'Anguilla', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('9', '0', 'Antarctica', '0', '', '', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('10', '0', 'Antigua and Barbuda', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('11', '0', 'Argentina', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('12', '0', 'Armenia', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('13', '0', 'Aruba', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('14', '0', 'Australia', '0', '', '', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('15', '0', 'Austria', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('16', '0', 'Azerbaijan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('17', '0', 'Bahrain', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('18', '0', 'Bangladesh', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('19', '0', 'Barbados', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('20', '0', 'Belarus', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('21', '0', 'Belgium', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('22', '0', 'Belize', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('23', '0', 'Benin', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('24', '0', 'Bermuda', '0', '', '', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('25', '0', 'Bhutan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('26', '0', 'Bolivia', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('27', '0', 'Bonaire, Sint Eustatius and Saba', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('28', '0', 'Bosnia and Herzegovina', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('29', '0', 'Botswana', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('30', '0', 'Bouvet Island', '0', '', '', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('31', '0', 'Brazil', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('32', '0', 'British Indian Ocean Territory', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('33', '0', 'British Virgin Islands', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('34', '0', 'Brunei', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('35', '0', 'Bulgaria', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('36', '0', 'Burkina Faso', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('37', '0', 'Burundi', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('38', '0', 'Cambodia', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('39', '0', 'Cameroon', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('40', '0', 'Canada', '0', '', '', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('41', '0', 'Cape Verde', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('42', '0', 'Cayman Islands', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('43', '0', 'Central African Republic', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('44', '0', 'Chad', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('45', '0', 'Chile', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('46', '0', 'China', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('47', '0', 'Christmas Island', '0', '', '', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('48', '0', 'Cocos (Keeling) Islands', '0', '', '', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('49', '0', 'Colombia', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('50', '0', 'Comoros', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('51', '0', 'Congo', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('52', '0', 'Congo-Brazzaville', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('53', '0', 'Cook Islands', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('54', '0', 'Costa Rica', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('55', '0', 'Côte d’Ivoire', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('56', '0', 'Croatia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('57', '0', 'Cuba', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('58', '0', 'Curaçao', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('59', '0', 'Cyprus', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('60', '0', 'Czech Republic', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('61', '0', 'Denmark', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('62', '0', 'Djibouti', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('63', '0', 'Dominica', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('64', '0', 'Dominican Republic', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('65', '0', 'Ecuador', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('66', '0', 'Egypt', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('67', '0', 'El Salvador', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('68', '0', 'Equatorial Guinea', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('69', '0', 'Eritrea', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('70', '0', 'Estonia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('71', '0', 'Ethiopia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('72', '0', 'Falkland Islands', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('73', '0', 'Faroes', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('74', '0', 'Fiji', '0', '', '', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('75', '0', 'Finland', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('76', '0', 'France', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('77', '0', 'French Guiana', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('78', '0', 'French Polynesia', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('79', '0', 'French Southern Territories', '0', '', '', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('80', '0', 'Gabon', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('81', '0', 'Gambia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('82', '0', 'Georgia', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('83', '0', 'Germany', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('84', '0', 'Ghana', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('85', '0', 'Gibraltar', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('86', '0', 'Greece', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('87', '0', 'Greenland', '0', '', '', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('88', '0', 'Grenada', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('89', '0', 'Guadeloupe', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('90', '0', 'Guam', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('91', '0', 'Guatemala', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('92', '0', 'Guernsey', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('93', '0', 'Guinea', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('94', '0', 'Guinea-Bissau', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('95', '0', 'Guyana', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('96', '0', 'Haiti', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('97', '0', 'Heard Island and McDonald Islands', '0', '', '', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('98', '0', 'Honduras', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('99', '0', 'Hong Kong SAR of China', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('100', '0', 'Hungary', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('101', '0', 'Iceland', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('102', '0', 'India', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('103', '0', 'Indonesia', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('104', '0', 'Iran', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('105', '0', 'Iraq', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('106', '0', 'Ireland', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('107', '0', 'Isle of Man', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('108', '0', 'Israel', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('109', '0', 'Italy', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('110', '0', 'Jamaica', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('111', '0', 'Japan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('112', '0', 'Jersey', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('113', '0', 'Jordan', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('114', '0', 'Kazakhstan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('115', '0', 'Kenya', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('116', '0', 'Kiribati', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('117', '0', 'Kuwait', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('118', '0', 'Kyrgyzstan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('119', '0', 'Laos', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('120', '0', 'Latvia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('121', '0', 'Lebanon', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('122', '0', 'Lesotho', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('123', '0', 'Liberia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('124', '0', 'Libya', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('125', '0', 'Liechtenstein', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('126', '0', 'Lithuania', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('127', '0', 'Luxembourg', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('128', '0', 'Macao SAR of China', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('129', '0', 'Macedonia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('130', '0', 'Madagascar', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('131', '0', 'Malawi', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('132', '0', 'Malaysia', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('133', '0', 'Maldives', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('134', '0', 'Mali', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('135', '0', 'Malta', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('136', '0', 'Marshall Islands', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('137', '0', 'Martinique', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('138', '0', 'Mauritania', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('139', '0', 'Mauritius', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('140', '0', 'Mayotte', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('141', '0', 'Mexico', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('142', '0', 'Micronesia', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('143', '0', 'Moldova', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('144', '0', 'Monaco', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('145', '0', 'Mongolia', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('146', '0', 'Montenegro', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('147', '0', 'Montserrat', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('148', '0', 'Morocco', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('149', '0', 'Mozambique', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('150', '0', 'Myanmar', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('151', '0', 'Namibia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('152', '0', 'Nauru', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('153', '0', 'Nepal', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('154', '0', 'Netherlands', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('155', '0', 'Netherlands Antilles', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('156', '0', 'New Caledonia', '0', '', '', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('157', '0', 'New Zealand', '0', '', '', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('158', '0', 'Nicaragua', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('159', '0', 'Niger', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('160', '0', 'Nigeria', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('161', '0', 'Niue', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('162', '0', 'Norfolk Island', '0', '', '', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('163', '0', 'North Korea', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('164', '0', 'Northern Marianas', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('165', '0', 'Norway', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('166', '0', 'Oman', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('167', '0', 'Pakistan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('168', '0', 'Palau', '0', '', '', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('169', '0', 'Palestine', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('170', '0', 'Panama', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('171', '0', 'Papua New Guinea', '0', '', '', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('172', '0', 'Paraguay', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('173', '0', 'Peru', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('174', '0', 'Philippines', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('175', '0', 'Pitcairn Islands', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('176', '0', 'Poland', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('177', '0', 'Portugal', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('178', '0', 'Puerto Rico', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('179', '0', 'Qatar', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('180', '0', 'Reunion', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('181', '0', 'Romania', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('182', '0', 'Russia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('183', '0', 'Rwanda', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('184', '0', 'Saint Barthélemy', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('185', '0', 'Saint Helena, Ascension and Tristan da Cunha', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('186', '0', 'Saint Kitts and Nevis', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('187', '0', 'Saint Lucia', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('188', '0', 'Saint Martin', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('189', '0', 'Saint Pierre and Miquelon', '0', '', '', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('190', '0', 'Saint Vincent and the Grenadines', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('191', '0', 'Samoa', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('192', '0', 'San Marino', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('193', '0', 'São Tomé e Príncipe', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('194', '0', 'Saudi Arabia', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('195', '0', 'Senegal', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('196', '0', 'Serbia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('197', '0', 'Serbia and Montenegro', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('198', '0', 'Seychelles', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('199', '0', 'Sierra Leone', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('200', '0', 'Singapore', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('201', '0', 'Sint Maarten', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('202', '0', 'Slovakia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('203', '0', 'Slovenia', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('204', '0', 'Solomon Islands', '0', '', '', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('205', '0', 'Somalia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('206', '0', 'South Africa', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('207', '0', 'South Georgia and the South Sandwich Islands', '0', '', '', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('208', '0', 'South Korea', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('209', '0', 'South Sudan', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('210', '0', 'Spain', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('211', '0', 'Sri Lanka', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('212', '0', 'Sudan', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('213', '0', 'Suriname', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('214', '0', 'Svalbard', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('215', '0', 'Swaziland', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('216', '0', 'Sweden', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('217', '0', 'Switzerland', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('218', '0', 'Syria', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('219', '0', 'Taiwan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('220', '0', 'Tajikistan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('221', '0', 'Tanzania', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('222', '0', 'Thailand', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('223', '0', 'The Bahamas', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('224', '0', 'Timor-Leste', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('225', '0', 'Togo', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('226', '0', 'Tokelau', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('227', '0', 'Tonga', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('228', '0', 'Trinidad and Tobago', '0', '', '', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('229', '0', 'Tunisia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('230', '0', 'Turkey', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('231', '0', 'Turkmenistan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('232', '0', 'Turks and Caicos Islands', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('233', '0', 'Tuvalu', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('234', '0', 'Uganda', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('235', '0', 'Ukraine', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('236', '0', 'United Arab Emirates', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('237', '0', 'United Kingdom', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('238', '0', 'United States', '0', '', '', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('239', '0', 'United States Minor Outlying Islands', '0', '', '', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('240', '0', 'Uruguay', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('241', '0', 'US Virgin Islands', '0', '', '', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('242', '0', 'Uzbekistan', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('243', '0', 'Vanuatu', '0', '', '', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('244', '0', 'Vatican City', '0', '', '', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('245', '0', 'Venezuela', '0', '', '', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('246', '0', 'Vietnam', '0', '', '', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('247', '0', 'Wallis and Futuna', '0', '', '', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('248', '0', 'Western Sahara', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('249', '0', 'Yemen', '0', '', '', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('250', '0', 'Zambia', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('251', '0', 'Zimbabwe', '0', '', '', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('252', '0', 'Benelux', '0', '', '', 'Benelux.png', '1', '21,127,154', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('253', '0', 'Scandinavia', '0', '', '', '', '1', '61,70,75,120,126,165,216', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_state"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_state;
CREATE TABLE tx_ecomtoolbox_domain_model_state (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  abbreviation varchar(255) NOT NULL default '',
  verified tinyint(1) unsigned NOT NULL default '0',
  country int(11) unsigned default '0',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  deleted tinyint(4) unsigned NOT NULL default '0',
  hidden tinyint(4) unsigned NOT NULL default '0',
  starttime int(11) unsigned NOT NULL default '0',
  endtime int(11) unsigned NOT NULL default '0',
  t3ver_oid int(11) NOT NULL default '0',
  t3ver_id int(11) NOT NULL default '0',
  t3ver_wsid int(11) NOT NULL default '0',
  t3ver_label varchar(255) NOT NULL default '',
  t3ver_state tinyint(4) NOT NULL default '0',
  t3ver_stage int(11) NOT NULL default '0',
  t3ver_count int(11) NOT NULL default '0',
  t3ver_tstamp int(11) NOT NULL default '0',
  t3ver_move_id int(11) NOT NULL default '0',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumblob,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY t3ver_oid (t3ver_oid,t3ver_wsid),
  KEY language (l10n_parent,sys_language_uid)
);


INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('1', '0', 'A Coruña', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('2', '0', 'Aargau', 'AG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('3', '0', 'Acre', 'AC', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('4', '0', 'Agrigento', 'AG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('5', '0', 'Aguascalientes', 'AGS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('6', '0', 'Ain', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('7', '0', 'Aisne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('8', '0', 'Alabama', 'AL', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('9', '0', 'Alagoas', 'AL', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('10', '0', 'Alaska', 'AK', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('11', '0', 'Alava', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('12', '0', 'Albacete', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('13', '0', 'Alberta', 'AB', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('14', '0', 'Alderney', 'ALD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('15', '0', 'Alessandria', 'AL', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('16', '0', 'Alicante', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('17', '0', 'Allier', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('18', '0', 'Almeria', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('19', '0', 'Alpes-de-Haute-Provence', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('20', '0', 'Alpes-Maritimes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('21', '0', 'Alsace', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('22', '0', 'Amapá', 'AP', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('23', '0', 'Amazonas', 'AM', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('24', '0', 'Ancona', 'AN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('25', '0', 'Antrim', 'ATM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('26', '0', 'Aosta', 'AO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('27', '0', 'Appenzell Ausserrhoden', 'AR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('28', '0', 'Appenzell Innerrhoden', 'AI', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('29', '0', 'Aquitaine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('30', '0', 'Ardèche', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('31', '0', 'Ardennes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('32', '0', 'Arezzo', 'AR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('33', '0', 'Ariège', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('34', '0', 'Arizona', 'AZ', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('35', '0', 'Arkansas', 'AR', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('36', '0', 'Armagh', 'ARM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('37', '0', 'Ascoli Piceno', 'AP', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('38', '0', 'Asti', 'AT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('39', '0', 'Asturias', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('40', '0', 'Aube', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('41', '0', 'Aude', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('42', '0', 'Australian Capital Territory', 'ACT', '1', '14', '1423147076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('43', '0', 'Auvergne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('44', '0', 'Avellino', 'AV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('45', '0', 'Aveyron', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('46', '0', 'Avila', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('47', '0', 'Badajoz', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('48', '0', 'Baden-Württemberg', 'BW', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('49', '0', 'Bahia', 'BA', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('50', '0', 'Baja California Norte', 'BC', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('51', '0', 'Baja California Sur', 'BCS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('52', '0', 'Baleares', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('53', '0', 'Barcelona', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('54', '0', 'Bari', 'BA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('55', '0', 'Barletta-Andria-Trani', 'BT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('56', '0', 'Bas-Rhin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('57', '0', 'Basel-Landschaft', 'BL', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('58', '0', 'Basel-Stadt', 'BS', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('59', '0', 'Basse-Normandie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('60', '0', 'Bavaria', 'BY', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('61', '0', 'Bedfordshire', 'BFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('62', '0', 'Belluno', 'BL', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('63', '0', 'Benevento', 'BN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('64', '0', 'Bergamo', 'BG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('65', '0', 'Berkshire', 'BRK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('66', '0', 'Berlin', 'BE', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('67', '0', 'Bern', 'BE', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('68', '0', 'Biella', 'BI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('69', '0', 'Birmingham', 'BIR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('70', '0', 'Bjelovar-Bilogora', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('71', '0', 'Blaenau Gwent', 'BLG', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('72', '0', 'Bologna', 'BO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('73', '0', 'Borders', 'BDS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('74', '0', 'Bouches-du-Rhône', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('75', '0', 'Bourgogne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('76', '0', 'Bozen', 'BZ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('77', '0', 'Brandenburg', 'BB', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('78', '0', 'Bremen', 'HB', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('79', '0', 'Brescia', 'BS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('80', '0', 'Bretagne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('81', '0', 'Bridgend', 'BRI', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('82', '0', 'Brindisi', 'BR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('83', '0', 'Bristol', 'BRS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('84', '0', 'British Columbia', 'BC', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('85', '0', 'Brod-Posavina', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('86', '0', 'Buckinghamshire', 'BUX', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('87', '0', 'Burgenland', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('88', '0', 'Burgos', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('89', '0', 'Caceres', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('90', '0', 'Cadiz', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('91', '0', 'Caerphilly', 'CAP', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('92', '0', 'Cagliari', 'CA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('93', '0', 'California', 'CA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('94', '0', 'Caltanissetta', 'CL', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('95', '0', 'Calvados', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('96', '0', 'Cambridgeshire', 'CBE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('97', '0', 'Campeche', 'CAM', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('98', '0', 'Campobasso', 'CB', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('99', '0', 'Cantabria', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('100', '0', 'Cantal', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('101', '0', 'Carbonia-Iglesias', 'CI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('102', '0', 'Cardiff', 'CAR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('103', '0', 'Carlow', 'CAR', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('104', '0', 'Carmarthenshire', 'CAS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('105', '0', 'Caserta', 'CE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('106', '0', 'Castellon', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('107', '0', 'Catania', 'CT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('108', '0', 'Catanzaro', 'CZ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('109', '0', 'Cavan', 'CAV', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('110', '0', 'Ceará', 'CE', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('111', '0', 'Central', 'CTR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('112', '0', 'Centre', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('113', '0', 'Ceredigion', 'CER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('114', '0', 'Ceuta', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('115', '0', 'Champagne-Ardenne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('116', '0', 'Channel Islands', 'CHI', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('117', '0', 'Charente', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('118', '0', 'Charente-Maritime', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('119', '0', 'Cher', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('120', '0', 'Cheshire', 'CHS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('121', '0', 'Chiapas', 'CHIS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('122', '0', 'Chieti', 'CH', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('123', '0', 'Chihuahua', 'CHIH', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('124', '0', 'Ciudad Real', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('125', '0', 'Clare', 'CLA', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('126', '0', 'Cleveland', 'CVE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('127', '0', 'Clipperton', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('128', '0', 'Clwyd', 'CLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('129', '0', 'Coahuila', 'COAH', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('130', '0', 'Colima', 'COL', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('131', '0', 'Colorado', 'CO', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('132', '0', 'Como', 'CO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('133', '0', 'Connecticut', 'CT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('134', '0', 'Conway', 'CON', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('135', '0', 'Cordoba', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('136', '0', 'Cork', 'COR', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('137', '0', 'Cornwall', 'CNL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('138', '0', 'Corrèze', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('139', '0', 'Corse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('140', '0', 'Corse-du-Sud', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('141', '0', 'Cosenza', 'CS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('142', '0', 'Côte-d\'Or', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('143', '0', 'Côtes-d\'Armor', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('144', '0', 'County Fermanagh', 'FMH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('145', '0', 'Cremona', 'CR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('146', '0', 'Creuse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('147', '0', 'Crotone', 'KR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('148', '0', 'Cuenca', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('149', '0', 'Cumbria', 'CBA', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('150', '0', 'Cuneo', 'CN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('151', '0', 'Delaware', 'DE', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('152', '0', 'Denbighshire', 'DEN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('153', '0', 'Derbyshire', 'DYS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('154', '0', 'Deux-Sèvres', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('155', '0', 'Devon', 'DVN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('156', '0', 'District of Columbia', 'DC', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('157', '0', 'Distrito Federal', 'DIF', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('158', '0', 'Distrito Federal', 'DF', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('159', '0', 'Dolnośląskie', 'DS', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('160', '0', 'Donegal', 'DON', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('161', '0', 'Dordogne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('162', '0', 'Dorset', 'DOR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('163', '0', 'Doubs', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('164', '0', 'Down', 'DWN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('165', '0', 'Drenthe', 'DR', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('166', '0', 'Drôme', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('167', '0', 'Dublin', 'DUB', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('168', '0', 'Dubrovnik-Neretva', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('169', '0', 'Dumfries and Galloway', 'DGL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('170', '0', 'Durango', 'DGO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('171', '0', 'Durham', 'DHM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('172', '0', 'Dyfed', 'DFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('173', '0', 'East Lothian', 'LTE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('174', '0', 'East Sussex', 'SXE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('175', '0', 'Enna', 'EN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('176', '0', 'Espírito Santo', 'ES', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('177', '0', 'Essex', 'ESX', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('178', '0', 'Essonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('179', '0', 'Eure', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('180', '0', 'Eure-et-Loir', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('181', '0', 'Fermanagh', 'FER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('182', '0', 'Fermo', 'FM', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('183', '0', 'Ferrara', 'FE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('184', '0', 'Fife', 'FFE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('185', '0', 'Finistère', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('186', '0', 'Florence', 'FI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('187', '0', 'Flevoland', 'FL', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('188', '0', 'Flintshire', 'FLI', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('189', '0', 'Florida', 'FL', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('190', '0', 'Foggia', 'FG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('191', '0', 'Forlì-Cesena', 'FC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('192', '0', 'Franche-Comté', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('193', '0', 'Freiburg', 'FR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('194', '0', 'Friesland', 'FR', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('195', '0', 'Frosinone', 'FR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('196', '0', 'Galway', 'GAL', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('197', '0', 'Gard', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('198', '0', 'Gelderland', 'GE', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('199', '0', 'Geneve', 'GE', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('200', '0', 'Genova', 'GE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('201', '0', 'Georgia', 'GA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('202', '0', 'Gers', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('203', '0', 'Girona', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('204', '0', 'Gironde', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('205', '0', 'Glarus', 'GL', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('206', '0', 'Gloucester', 'GLR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('207', '0', 'Gloucestershire', 'GLO', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('208', '0', 'Goiás', 'GO', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('209', '0', 'Gorizia', 'GO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('210', '0', 'City of Zagreb', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('211', '0', 'Grampian', 'GRN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('212', '0', 'Granada', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('213', '0', 'Graubünden', 'GR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('214', '0', 'Greater London', 'LDN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('215', '0', 'Greater Manchester', 'MCH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('216', '0', 'Groningen', 'GR', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('217', '0', 'Grosseto', 'GR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('218', '0', 'Guadalajara', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('219', '0', 'Guadeloupe', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('220', '0', 'Guam', 'GU', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('221', '0', 'Guanajuato', 'GTO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('222', '0', 'Guernsey', 'GUR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('223', '0', 'Guerrero', 'GRO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('224', '0', 'Guipuzcoa', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('225', '0', 'French Guiana', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('226', '0', 'Gwent', 'GWT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('227', '0', 'Gwynedd', 'GDD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('228', '0', 'Hamburg', 'HH', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('229', '0', 'Hampshire', 'HPH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('230', '0', 'Haut-Rhin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('231', '0', 'Haute-Corse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('232', '0', 'Haute-Garonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('233', '0', 'Haute-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('234', '0', 'Haute-Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('235', '0', 'Haute-Normandie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('236', '0', 'Haute-Saône', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('237', '0', 'Haute-Savoie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('238', '0', 'Haute-Vienne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('239', '0', 'Hautes-Alpes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('240', '0', 'Hautes-Pyrénées', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('241', '0', 'Hauts-de-Seine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('242', '0', 'Hawaii', 'HI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('243', '0', 'Hérault', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('244', '0', 'Hereford and Worcester', 'HWR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('245', '0', 'Hertfordshire', 'HFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('246', '0', 'Hesse', 'HE', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('247', '0', 'Hidalgo', 'HGO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('248', '0', 'Highlands', 'HLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('249', '0', 'Huelva', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('250', '0', 'Huesca', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('251', '0', 'Humberside', 'HBS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('252', '0', 'Idaho', 'ID', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('253', '0', 'Île-de-France', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('254', '0', 'Ille-et-Vilaine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('255', '0', 'Illinois', 'IL', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('256', '0', 'Imperia', 'IM', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('257', '0', 'Indiana', 'IN', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('258', '0', 'Indre', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('259', '0', 'Indre-et-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('260', '0', 'Iowa', 'IA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('261', '0', 'Isère', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('262', '0', 'Isernia', 'IS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('263', '0', 'Isle of Anglesey', 'ISL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('264', '0', 'Isle of Man', 'IOM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('265', '0', 'Isle of Wight', 'IOW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('266', '0', 'Istria', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('267', '0', 'Jaen', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('268', '0', 'Jalisco', 'JAL', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('269', '0', 'Jersey', 'JER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('270', '0', 'Jura', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('271', '0', 'Jura', 'JU', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('272', '0', 'Kansas', 'KS', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('273', '0', 'Karlovac', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('274', '0', 'Carinthia', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('275', '0', 'Kent', 'KNT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('276', '0', 'Kentucky', 'KY', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('277', '0', 'Kerry', 'KER', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('278', '0', 'Kildare', 'KIL', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('279', '0', 'Kilkenny', 'KLK', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('280', '0', 'Koprivnica-Križevci', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('281', '0', 'Krapina-Zagorje', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('282', '0', 'Kujawsko-pomorskie', 'KP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('283', '0', 'L\'Aquila', 'AQ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('284', '0', 'Réunion', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('285', '0', 'La Rioja', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('286', '0', 'La Spezia', 'SP', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('287', '0', 'Lancashire', 'LNH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('288', '0', 'Landes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('289', '0', 'Languedoc-Roussillon', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('290', '0', 'Laois', 'LAO', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('291', '0', 'Las Palmas', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('292', '0', 'Latina', 'LT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('293', '0', 'Lecce', 'LE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('294', '0', 'Lecco', 'LC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('295', '0', 'Leicestershire', 'LEC', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('296', '0', 'Leitrim', 'LEI', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('297', '0', 'Leon', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('298', '0', 'Lika-Senj', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('299', '0', 'Limburg', 'LI', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('300', '0', 'Limerick', 'LIM', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('301', '0', 'Limousin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('302', '0', 'Lincolnshire', 'LCN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('303', '0', 'Livorno', 'LI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('304', '0', 'Lleida', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('305', '0', 'Lodi', 'LO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('306', '0', 'Loir-et-Cher', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('307', '0', 'Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('308', '0', 'Loire-Atlantique', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('309', '0', 'Loiret', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('310', '0', 'London', 'LON', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('311', '0', 'Londonderry', 'LDR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('312', '0', 'Longford', 'LON', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('313', '0', 'Lorraine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('314', '0', 'Lot', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('315', '0', 'Lot-et-Garonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('316', '0', 'Louisiana', 'LA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('317', '0', 'Louth', 'LOU', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('318', '0', 'Lozère', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('319', '0', 'Lubelskie', 'LU', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('320', '0', 'Lubuskie', 'LB', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('321', '0', 'Lucca', 'LU', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('322', '0', 'Lugo', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('323', '0', 'Luzern', 'LU', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('324', '0', 'Macerata', 'MC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('325', '0', 'Madrid', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('326', '0', 'Maine', 'ME', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('327', '0', 'Maine-et-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('328', '0', 'Malaga', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('329', '0', 'Manche', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('330', '0', 'Manitoba', 'MB', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('331', '0', 'Mantova', 'MN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('332', '0', 'Maranhão', 'MA', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('333', '0', 'Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('334', '0', 'Martinique', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('335', '0', 'Maryland', 'MD', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('336', '0', 'Massa Carrara', 'MS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('337', '0', 'Massachusetts', 'MA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('338', '0', 'Matera', 'MT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('339', '0', 'Mato Grosso', 'MT', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('340', '0', 'Mato Grosso do Sul', 'MS', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('341', '0', 'Mayenne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('342', '0', 'Mayo', 'MAY', '1', '104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('343', '0', 'Mayotte', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('344', '0', 'Mazowieckie', 'MZ', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('345', '0', 'Małopolskie', 'MA', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('346', '0', 'Meath', 'MEA', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('347', '0', 'Mecklenburg-Western Pomerania', 'MV', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('348', '0', 'Medio Campidano', 'VS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('349', '0', 'Melilla', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('350', '0', 'Merseyside', 'MSY', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('351', '0', 'Merthyr Tydfil', 'MER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('352', '0', 'Messina', 'ME', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('353', '0', 'Meurthe-et-Moselle', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('354', '0', 'Meuse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('355', '0', 'México', 'MEX', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('356', '0', 'Međimurje', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('357', '0', 'Michigan', 'MI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('358', '0', 'Michoacán', 'MICH', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('359', '0', 'Mid Glamorgan', 'GNM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('360', '0', 'Mid Lothian', 'LTM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('361', '0', 'Midi-Pyrénées', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('362', '0', 'Milano', 'MI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('363', '0', 'Minas Gerais', 'MG', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('364', '0', 'Minnesota', 'MN', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('365', '0', 'Mississippi', 'MS', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('366', '0', 'Missouri', 'MO', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('367', '0', 'Modena', 'MO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('368', '0', 'Monaghan', 'MON', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('369', '0', 'Monmouthshire', 'MON', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('370', '0', 'Montana', 'MT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('371', '0', 'Monza e Brianza', 'MB', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('372', '0', 'Morbihan', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('373', '0', 'Morelos', 'MOR', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('374', '0', 'Moselle', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('375', '0', 'Murcia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('376', '0', 'Naples', 'NA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('377', '0', 'Navarra', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('378', '0', 'Nayarit', 'NAY', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('379', '0', 'Neath Port Talbot', 'NET', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('380', '0', 'Nebraska', 'NE', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('381', '0', 'Neuenburg', 'NE', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('382', '0', 'Nevada', 'NV', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('383', '0', 'New Brunswick', 'NB', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('384', '0', 'New Hampshire', 'NH', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('385', '0', 'New Jersey', 'NJ', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('386', '0', 'New Mexico', 'NM', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('387', '0', 'New South Wales', 'NSW', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('388', '0', 'New York', 'NY', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('389', '0', 'Newfoundland and Labrabor', 'NF', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('390', '0', 'Newport', 'NEW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('391', '0', 'Nidwalden', 'NW', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('392', '0', 'Lower Austria', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('393', '0', 'Lower Saxony', 'NI', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('394', '0', 'Nièvre', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('395', '0', 'Noord-Brabant', 'NB', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('396', '0', 'Noord-Holland', 'NH', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('397', '0', 'Nord', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('398', '0', 'Nord-Pas-de-Calais', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('399', '0', 'North Rhine-Westphalia', 'NW', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('400', '0', 'Norfolk', 'NOR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('401', '0', 'North Carolina', 'NC', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('402', '0', 'North Dakota', 'ND', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('403', '0', 'North West Highlands', 'NWH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('404', '0', 'North Yorkshire', 'YSN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('405', '0', 'Northamptonshire', 'NHM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('406', '0', 'Northern Territory', 'NT', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('407', '0', 'Northumberland', 'NLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('408', '0', 'Northwest Territories', 'NT', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('409', '0', 'Nottinghamshire', 'NOT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('410', '0', 'New Caledonia', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('411', '0', 'Nova Scotia', 'NS', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('412', '0', 'Novara', 'NO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('413', '0', 'Nuevo León', 'NL', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('414', '0', 'Nunavut', 'NU', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('415', '0', 'Nuoro', 'NU', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('416', '0', 'Oaxaca', 'OAX', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('417', '0', 'Upper Austria', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('418', '0', 'Obwalden', 'OW', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('419', '0', 'Offaly', 'OFF', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('420', '0', 'Ogliastra', 'OG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('421', '0', 'Ohio', 'OH', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('422', '0', 'Oise', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('423', '0', 'Oklahoma', 'OK', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('424', '0', 'Olbia-Tempio', 'OT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('425', '0', 'Ontario', 'ON', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('426', '0', 'Opolskie', 'OP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('427', '0', 'Oregon', 'OR', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('428', '0', 'Oristano', 'OR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('429', '0', 'Orkney', 'ORK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('430', '0', 'Orne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('431', '0', 'Osijek-Baranja', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('432', '0', 'Ourense', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('433', '0', 'Overijssel', 'OV', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('434', '0', 'Oxfordshire', 'OFE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('435', '0', 'Padova', 'PD', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('436', '0', 'Palencia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('437', '0', 'Palermo', 'PA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('438', '0', 'Pará', 'PA', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('439', '0', 'Paraíba', 'PB', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('440', '0', 'Paraná', 'PR', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('441', '0', 'Paris', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('442', '0', 'Parma', 'PR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('443', '0', 'Pas-de-Calais', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('444', '0', 'Pavia', 'PV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('445', '0', 'Pays de la Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('446', '0', 'Pembrokeshire', 'PEM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('447', '0', 'Pennsylvania', 'PA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('448', '0', 'Pernambuco', 'PE', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('449', '0', 'Perugia', 'PG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('450', '0', 'Pesaro e Urbino', 'PU', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('451', '0', 'Pescara', 'PE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('452', '0', 'Piacenza', 'PC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('453', '0', 'Piauí', 'PI', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('454', '0', 'Picardie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('455', '0', 'Pisa', 'PI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('456', '0', 'Pistoia', 'PT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('457', '0', 'Podkarpackie', 'PK', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('458', '0', 'Podlaskie', 'PD', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('459', '0', 'Poitou-Charentes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('460', '0', 'French Polynesia', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('461', '0', 'Pomorskie', 'PM', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('462', '0', 'Pontevedra', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('463', '0', 'Pordenone', 'PN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('464', '0', 'Potenza', 'PZ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('465', '0', 'Powys', 'PWS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('466', '0', 'Požega-Slavonia', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('467', '0', 'Prato', 'PO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('468', '0', 'Primorje-Gorski Kotar', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('469', '0', 'Prince Edward Island', 'PE', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('470', '0', 'Provence-Alpes-Côte d\'Azur', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('471', '0', 'Puebla', 'PUE', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('472', '0', 'Puerto Rico', 'PR', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('473', '0', 'Puy-de-Dôme', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('474', '0', 'Pyrénées-Atlantiques', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('475', '0', 'Pyrénées-Orientales', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('476', '0', 'Quebec', 'QC', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('477', '0', 'Queensland', 'QLD', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('478', '0', 'Querétaro', 'QRO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('479', '0', 'Quintana Roo', 'QROO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('480', '0', 'Ragusa', 'RG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('481', '0', 'Ravenna', 'RA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('482', '0', 'Reggio Calabria', 'RC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('483', '0', 'Reggio Emilia', 'RE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('484', '0', 'Rhineland-Palatinate', 'RP', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('485', '0', 'Rhode Island', 'RI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('486', '0', 'Rhondda Cynon Taff', 'TAF', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('487', '0', 'Rhône', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('488', '0', 'Rhône-Alpes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('489', '0', 'Rieti', 'RI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('490', '0', 'Rimini', 'RN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('491', '0', 'Rio de Janeiro', 'RJ', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('492', '0', 'Rio Grande do Norte', 'RN', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('493', '0', 'Rio Grande do Sul', 'RS', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('494', '0', 'Rome', 'RM', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('495', '0', 'Rondônia', 'RO', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('496', '0', 'Roraima', 'RR', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('497', '0', 'Roscommon', 'ROS', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('498', '0', 'Rovigo', 'RO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('499', '0', 'Saarland', 'SL', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('500', '0', 'Saxony', 'SN', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('501', '0', 'Saxony-Anhalt', 'ST', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('502', '0', 'Saint Barthélemy', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('503', '0', 'Saint Martin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('504', '0', 'Saint Pierre and Miquelon', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('505', '0', 'Salamanca', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('506', '0', 'Salerno', 'SA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('507', '0', 'Salzburg', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('508', '0', 'San Luis Potosí', 'SLP', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('509', '0', 'Santa Catarina', 'SC', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('510', '0', 'São Paulo', 'SP', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('511', '0', 'Saône-et-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('512', '0', 'Sark', 'SRK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('513', '0', 'Sarthe', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('514', '0', 'Saskatchewan', 'SK', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('515', '0', 'Sassari', 'SS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('516', '0', 'Savoie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('517', '0', 'Savona', 'SV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('518', '0', 'Schaffhausen', 'SH', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('519', '0', 'Schleswig-Holstein', 'SH', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('520', '0', 'Schwyz', 'SZ', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('521', '0', 'Segovia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('522', '0', 'Seine-et-Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('523', '0', 'Seine-Maritime', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('524', '0', 'Seine-Saint-Denis', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('525', '0', 'Sergipe', 'SE', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('526', '0', 'Sevilla', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('527', '0', 'Shetland', 'SLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('528', '0', 'Shropshire', 'SPE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('529', '0', 'Šibenik-Knin', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('530', '0', 'Siena', 'SI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('531', '0', 'Sinaloa', 'SIN', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('532', '0', 'Siracusa', 'SR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('533', '0', 'Sisak-Moslavina', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('534', '0', 'Śląskie', 'SL', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('535', '0', 'Sligo', 'SLI', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('536', '0', 'Solothurn', 'SO', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('537', '0', 'Somerset', 'SOM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('538', '0', 'Somme', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('539', '0', 'Sondrio', 'SO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('540', '0', 'Sonora', 'SON', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('541', '0', 'Soria', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('542', '0', 'South Australia', 'SA', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('543', '0', 'South Carolina', 'SC', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('544', '0', 'South Dakota', 'SD', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('545', '0', 'South Glamorgan', 'GNS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('546', '0', 'South Yorkshire', 'YSS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('547', '0', 'Split-Dalmatia', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('548', '0', 'St. Gallen', 'SG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('549', '0', 'Staffordshire', 'SFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('550', '0', 'Styria', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('551', '0', 'Strathclyde', 'SCD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('552', '0', 'Suffolk', 'SFK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('553', '0', 'Surrey', 'SRY', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('554', '0', 'Swansea', 'SWA', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('555', '0', 'Świętokrzyskie', 'SK', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('556', '0', 'Tabasco', 'TAB', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('557', '0', 'Tamaulipas', 'TAMPS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('558', '0', 'Taranto', 'TA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('559', '0', 'Tarn', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('560', '0', 'Tarn-et-Garonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('561', '0', 'Tarragona', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('562', '0', 'Tasmania', 'TAS', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('563', '0', 'Tayside', 'TYS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('564', '0', 'Tenerife', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('565', '0', 'Tennessee', 'TN', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('566', '0', 'Teramo', 'TE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('567', '0', 'Terni', 'TR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('568', '0', 'French Southern Territories', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('569', '0', 'Territoire de Belfort', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('570', '0', 'Teruel', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('571', '0', 'Tessin', 'TI', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('572', '0', 'Texas', 'TX', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('573', '0', 'Thurgau', 'TG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('574', '0', 'Thuringia', 'TH', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('575', '0', 'Tipperary', 'TIP', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('576', '0', 'Tyrol', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('577', '0', 'Tlaxcala', 'TLAX', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('578', '0', 'Tocantins', 'TO', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('579', '0', 'Toledo', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('580', '0', 'Torfaen', 'TOR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('581', '0', 'Torino', 'TO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('582', '0', 'Trapani', 'TP', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('583', '0', 'Trento', 'TN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('584', '0', 'Treviso', 'TV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('585', '0', 'Trieste', 'TS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('586', '0', 'Tyne and Wear', 'TWR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('587', '0', 'Tyrone', 'TYR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('588', '0', 'Udine', 'UD', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('589', '0', 'Uri', 'UR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('590', '0', 'Utah', 'UT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('591', '0', 'Utrecht', 'UT', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('592', '0', 'Val-d\'Oise', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('593', '0', 'Val-de-Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('594', '0', 'Vale of Glamorgan', 'VAL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('595', '0', 'Valencia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('596', '0', 'Valladolid', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('597', '0', 'Var', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('598', '0', 'Varaždin', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('599', '0', 'Varese', 'VA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('600', '0', 'Vaucluse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('601', '0', 'Vendée', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('602', '0', 'Venice', 'VE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('603', '0', 'Veracruz', 'VER', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('604', '0', 'Verbano-Cusio-Ossola', 'VB', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('605', '0', 'Vercelli', 'VC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('606', '0', 'Vermont', 'VT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('607', '0', 'Verona', 'VR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('608', '0', 'Vibo Valentia', 'VV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('609', '0', 'Vicenza', 'VI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('610', '0', 'Victoria', 'VIC', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('611', '0', 'Vienne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('612', '0', 'Virginia', 'VA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('613', '0', 'Virovitica-Podravina', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('614', '0', 'Viterbo', 'VT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('615', '0', 'Vizcaya', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('616', '0', 'Vorarlberg', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('617', '0', 'Vosges', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('618', '0', 'Vukovar-Syrmia', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('619', '0', 'Waadt', 'VD', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('620', '0', 'Wallis', 'VS', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('621', '0', 'Wallis and Futuna', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('622', '0', 'Warmińsko-mazurskie', 'WN', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('623', '0', 'Warwickshire', 'WKS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('624', '0', 'Washington', 'WA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('625', '0', 'Waterford', 'WAT', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('626', '0', 'West Glamorgan', 'GNW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('627', '0', 'West Lothian', 'LTW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('628', '0', 'West Midlands', 'WMD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('629', '0', 'West Sussex', 'SXW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('630', '0', 'West Virginia', 'WV', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('631', '0', 'West Yorkshire', 'YSW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('632', '0', 'Western Australia', 'WA', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('633', '0', 'Western Isles', 'WIL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('634', '0', 'Westmeath', 'WES', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('635', '0', 'Wexford', 'WEX', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('636', '0', 'Wicklow', 'WIC', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('637', '0', 'Wielkopolskie', 'WP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('638', '0', 'Vienna', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('639', '0', 'Wiltshire', 'WLT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('640', '0', 'Wisconsin', 'WI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('641', '0', 'Wrexham', 'WRE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('642', '0', 'Wyoming', 'WY', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('643', '0', 'Yonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('644', '0', 'Yucatán', 'YUC', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('645', '0', 'Yukon Territory', 'YT', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('646', '0', 'Yvelines', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('647', '0', 'Zacatecas', 'ZAC', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('648', '0', 'Zachodniopomorskie', 'ZP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('649', '0', 'Zadar', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('650', '0', 'Zagreb', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('651', '0', 'Zamora', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('652', '0', 'Zaragoza', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('653', '0', 'Zeeland', 'ZE', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('654', '0', 'Zug', 'ZG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('655', '0', 'Zuid-Holland', 'ZH', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('656', '0', 'Zürich', 'ZH', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('657', '0', 'Łódzkie', 'LD', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_territory"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_territory;
CREATE TABLE tx_ecomtoolbox_domain_model_territory (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  verified tinyint(1) unsigned NOT NULL default '0',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  deleted tinyint(4) unsigned NOT NULL default '0',
  hidden tinyint(4) unsigned NOT NULL default '0',
  starttime int(11) unsigned NOT NULL default '0',
  endtime int(11) unsigned NOT NULL default '0',
  t3ver_oid int(11) NOT NULL default '0',
  t3ver_id int(11) NOT NULL default '0',
  t3ver_wsid int(11) NOT NULL default '0',
  t3ver_label varchar(255) NOT NULL default '',
  t3ver_state tinyint(4) NOT NULL default '0',
  t3ver_stage int(11) NOT NULL default '0',
  t3ver_count int(11) NOT NULL default '0',
  t3ver_tstamp int(11) NOT NULL default '0',
  t3ver_move_id int(11) NOT NULL default '0',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumblob,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY t3ver_oid (t3ver_oid,t3ver_wsid),
  KEY language (l10n_parent,sys_language_uid)
);


INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('1', '0', 'Africa', '1', '1423204952', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('2', '0', 'Oceania', '1', '1423204957', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('3', '0', 'Americas', '1', '1423204963', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('4', '0', 'Asia', '1', '1423204964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('5', '0', 'Europe', '1', '1423204964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('6', '0', 'Eastern Asia', '1', '1423204980', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('7', '0', 'South-eastern Asia', '1', '1423204984', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('8', '0', 'Central Asia', '1', '1423204993', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('9', '0', 'Western Asia', '1', '1423204997', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('10', '0', 'Southern Europe', '1', '1423205002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('11', '0', 'Eastern Europe', '1', '1423205002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('12', '0', 'Northern Europe', '1', '1423205003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('13', '0', 'Western Europe', '1', '1423205003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('14', '0', 'Middle East', '1', '1423205004', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('15', '0', 'Southern Asia', '1', '1423205004', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('16', '0', 'South America', '1', '1423205005', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('17', '0', 'Central America', '1', '1423205010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('18', '0', 'Northern America', '1', '1423205010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('19', '0', 'Caribbean', '1', '1423205011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('20', '0', 'Western Africa', '1', '1423205015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('21', '0', 'Eastern Africa', '1', '1423205015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('22', '0', 'Northern Africa', '1', '1423205016', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('23', '0', 'Middle Africa', '1', '1423205016', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('24', '0', 'Southern Africa', '1', '1423205017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('25', '0', 'Australia and New Zealand', '1', '1423205018', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('26', '0', 'Melanesia', '1', '1423205018', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('27', '0', 'Micronesian Region', '1', '1423205019', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('28', '0', 'Polynesia', '1', '1423205149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_language"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_language;
CREATE TABLE tx_ecomtoolbox_domain_model_language (
  uid int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  sys_language int(11) NOT NULL default '0',
  flag varchar(20) NOT NULL default '',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (uid),
  KEY parent (pid)
);


INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('1', '0', 'english', '0', 'us', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('2', '0', 'français', '0', 'fr', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('3', '0', 'español', '0', 'es', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('4', '0', 'pу́сски', '0', 'ru', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('5', '0', 'português', '0', 'pt', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('6', '0', 'english', '0', 'gb', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('7', '0', 'deutsch', '1', 'de', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('8', '0', 'nederlands', '0', 'nl', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('9', '0', 'italiano', '0', 'it', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('10', '0', 'svenska', '0', 'se', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('11', '0', '汉语', '0', 'cn', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('12', '0', 'ภาษาไทย', '0', 'tw', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('13', '0', 'العربية', '0', 'sa', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('14', '0', 'Български', '0', 'bg', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('15', '0', 'dansk', '0', 'dk', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('16', '0', 'suomi', '0', 'fi', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('17', '0', '한국어', '0', 'kr', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('18', '0', 'македонски', '0', 'mk', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('19', '0', 'norsk', '0', 'no', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('20', '0', 'српски', '0', 'rs', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('21', '0', 'türkçe', '0', 'tr', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('22', '0', 'magyar', '0', 'hu', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('23', '0', 'lietuvių', '0', 'lt', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('24', '0', 'eesti', '0', 'ee', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('25', '0', 'polski', '0', 'pl', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('26', '0', 'român', '0', 'ro', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('27', '0', 'čeština', '0', 'cz', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('28', '0', 'português do brasil', '0', 'br', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('29', '0', '日本の', '0', 'jp', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('30', '0', 'english', '0', 'au', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('31', '0', 'english', '0', 'ca', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('32', '0', 'english', '0', 'za', '0', '0', '1');
INSERT INTO tx_ecomtoolbox_domain_model_language VALUES ('33', '0', 'multilingual', '0', 'multiple', '0', '0', '1');


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_region"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_region;
CREATE TABLE tx_ecomtoolbox_domain_model_region (
  uid int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  flag_icon_name varchar(255) NOT NULL default '',
  verified tinyint(1) unsigned NOT NULL default '0',
  countries text NOT NULL,
  territory int(11) unsigned default '0',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  deleted tinyint(4) unsigned NOT NULL default '0',
  hidden tinyint(4) unsigned NOT NULL default '0',
  starttime int(11) unsigned NOT NULL default '0',
  endtime int(11) unsigned NOT NULL default '0',
  t3ver_oid int(11) NOT NULL default '0',
  t3ver_id int(11) NOT NULL default '0',
  t3ver_wsid int(11) NOT NULL default '0',
  t3ver_label varchar(255) NOT NULL default '',
  t3ver_state tinyint(4) NOT NULL default '0',
  t3ver_stage int(11) NOT NULL default '0',
  t3ver_count int(11) NOT NULL default '0',
  t3ver_tstamp int(11) NOT NULL default '0',
  t3ver_move_id int(11) NOT NULL default '0',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumblob,
  type int(11) NOT NULL default '0',
  iso_code_a2 varchar(255) NOT NULL default '',
  iso_code_a3 varchar(255) NOT NULL default '',
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY t3ver_oid (t3ver_oid,t3ver_wsid),
  KEY language (l10n_parent,sys_language_uid)
);


INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('1', '0', 'Afghanistan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('2', '0', 'Åland', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('3', '0', 'Albania', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('4', '0', 'Algeria', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('5', '0', 'American Samoa', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('6', '0', 'Andorra', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('7', '0', 'Angola', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('8', '0', 'Anguilla', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('9', '0', 'Antarctica', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('10', '0', 'Antigua and Barbuda', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('11', '0', 'Argentina', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('12', '0', 'Armenia', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('13', '0', 'Aruba', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('14', '0', 'Australia', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('15', '0', 'Austria', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('16', '0', 'Azerbaijan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('17', '0', 'Bahrain', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('18', '0', 'Bangladesh', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('19', '0', 'Barbados', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('20', '0', 'Belarus', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('21', '0', 'Belgium', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('22', '0', 'Belize', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('23', '0', 'Benin', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('24', '0', 'Bermuda', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('25', '0', 'Bhutan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('26', '0', 'Bolivia', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('27', '0', 'Bonaire, Sint Eustatius and Saba', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('28', '0', 'Bosnia and Herzegovina', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('29', '0', 'Botswana', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('30', '0', 'Bouvet Island', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('31', '0', 'Brazil', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('32', '0', 'British Indian Ocean Territory', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('33', '0', 'British Virgin Islands', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('34', '0', 'Brunei', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('35', '0', 'Bulgaria', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('36', '0', 'Burkina Faso', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('37', '0', 'Burundi', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('38', '0', 'Cambodia', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('39', '0', 'Cameroon', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('40', '0', 'Canada', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('41', '0', 'Cape Verde', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('42', '0', 'Cayman Islands', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('43', '0', 'Central African Republic', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('44', '0', 'Chad', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('45', '0', 'Chile', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('46', '0', 'China', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('47', '0', 'Christmas Island', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('48', '0', 'Cocos (Keeling) Islands', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('49', '0', 'Colombia', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('50', '0', 'Comoros', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('51', '0', 'Congo', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('52', '0', 'Congo-Brazzaville', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('53', '0', 'Cook Islands', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('54', '0', 'Costa Rica', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('55', '0', 'Côte d’Ivoire', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('56', '0', 'Croatia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('57', '0', 'Cuba', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('58', '0', 'Curaçao', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('59', '0', 'Cyprus', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('60', '0', 'Czech Republic', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('61', '0', 'Denmark', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('62', '0', 'Djibouti', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('63', '0', 'Dominica', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('64', '0', 'Dominican Republic', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('65', '0', 'Ecuador', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('66', '0', 'Egypt', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('67', '0', 'El Salvador', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('68', '0', 'Equatorial Guinea', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('69', '0', 'Eritrea', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('70', '0', 'Estonia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('71', '0', 'Ethiopia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('72', '0', 'Falkland Islands', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('73', '0', 'Faroes', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('74', '0', 'Fiji', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('75', '0', 'Finland', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('76', '0', 'France', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('77', '0', 'French Guiana', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('78', '0', 'French Polynesia', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('79', '0', 'French Southern Territories', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('80', '0', 'Gabon', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('81', '0', 'Gambia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('82', '0', 'Georgia', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('83', '0', 'Germany', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('84', '0', 'Ghana', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('85', '0', 'Gibraltar', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('86', '0', 'Greece', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('87', '0', 'Greenland', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('88', '0', 'Grenada', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('89', '0', 'Guadeloupe', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('90', '0', 'Guam', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('91', '0', 'Guatemala', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('92', '0', 'Guernsey', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('93', '0', 'Guinea', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('94', '0', 'Guinea-Bissau', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('95', '0', 'Guyana', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('96', '0', 'Haiti', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('97', '0', 'Heard Island and McDonald Islands', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('98', '0', 'Honduras', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('99', '0', 'Hong Kong SAR of China', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('100', '0', 'Hungary', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('101', '0', 'Iceland', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('102', '0', 'India', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('103', '0', 'Indonesia', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('104', '0', 'Iran', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('105', '0', 'Iraq', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('106', '0', 'Ireland', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('107', '0', 'Isle of Man', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('108', '0', 'Israel', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('109', '0', 'Italy', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('110', '0', 'Jamaica', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('111', '0', 'Japan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('112', '0', 'Jersey', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('113', '0', 'Jordan', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('114', '0', 'Kazakhstan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('115', '0', 'Kenya', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('116', '0', 'Kiribati', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('117', '0', 'Kuwait', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('118', '0', 'Kyrgyzstan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('119', '0', 'Laos', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('120', '0', 'Latvia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('121', '0', 'Lebanon', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('122', '0', 'Lesotho', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('123', '0', 'Liberia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('124', '0', 'Libya', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('125', '0', 'Liechtenstein', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('126', '0', 'Lithuania', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('127', '0', 'Luxembourg', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('128', '0', 'Macao SAR of China', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('129', '0', 'Macedonia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('130', '0', 'Madagascar', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('131', '0', 'Malawi', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('132', '0', 'Malaysia', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('133', '0', 'Maldives', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('134', '0', 'Mali', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('135', '0', 'Malta', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('136', '0', 'Marshall Islands', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('137', '0', 'Martinique', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('138', '0', 'Mauritania', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('139', '0', 'Mauritius', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('140', '0', 'Mayotte', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('141', '0', 'Mexico', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('142', '0', 'Micronesia', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('143', '0', 'Moldova', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('144', '0', 'Monaco', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('145', '0', 'Mongolia', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('146', '0', 'Montenegro', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('147', '0', 'Montserrat', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('148', '0', 'Morocco', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('149', '0', 'Mozambique', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('150', '0', 'Myanmar', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('151', '0', 'Namibia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('152', '0', 'Nauru', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('153', '0', 'Nepal', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('154', '0', 'Netherlands', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('155', '0', 'Netherlands Antilles', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('156', '0', 'New Caledonia', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('157', '0', 'New Zealand', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('158', '0', 'Nicaragua', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('159', '0', 'Niger', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('160', '0', 'Nigeria', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('161', '0', 'Niue', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('162', '0', 'Norfolk Island', '', '1', '', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('163', '0', 'North Korea', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('164', '0', 'Northern Marianas', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('165', '0', 'Norway', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('166', '0', 'Oman', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('167', '0', 'Pakistan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('168', '0', 'Palau', '', '1', '', '27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('169', '0', 'Palestine', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('170', '0', 'Panama', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('171', '0', 'Papua New Guinea', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('172', '0', 'Paraguay', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('173', '0', 'Peru', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('174', '0', 'Philippines', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('175', '0', 'Pitcairn Islands', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('176', '0', 'Poland', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('177', '0', 'Portugal', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('178', '0', 'Puerto Rico', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('179', '0', 'Qatar', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('180', '0', 'Reunion', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('181', '0', 'Romania', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('182', '0', 'Russia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('183', '0', 'Rwanda', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('184', '0', 'Saint Barthélemy', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('185', '0', 'Saint Helena, Ascension and Tristan da Cunha', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('186', '0', 'Saint Kitts and Nevis', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('187', '0', 'Saint Lucia', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('188', '0', 'Saint Martin', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('189', '0', 'Saint Pierre and Miquelon', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('190', '0', 'Saint Vincent and the Grenadines', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('191', '0', 'Samoa', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('192', '0', 'San Marino', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('193', '0', 'São Tomé e Príncipe', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('194', '0', 'Saudi Arabia', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('195', '0', 'Senegal', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('196', '0', 'Serbia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('197', '0', 'Serbia and Montenegro', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('198', '0', 'Seychelles', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('199', '0', 'Sierra Leone', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('200', '0', 'Singapore', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('201', '0', 'Sint Maarten', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('202', '0', 'Slovakia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('203', '0', 'Slovenia', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('204', '0', 'Solomon Islands', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('205', '0', 'Somalia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('206', '0', 'South Africa', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('207', '0', 'South Georgia and the South Sandwich Islands', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('208', '0', 'South Korea', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('209', '0', 'South Sudan', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('210', '0', 'Spain', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('211', '0', 'Sri Lanka', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('212', '0', 'Sudan', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('213', '0', 'Suriname', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('214', '0', 'Svalbard', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('215', '0', 'Swaziland', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('216', '0', 'Sweden', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('217', '0', 'Switzerland', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('218', '0', 'Syria', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('219', '0', 'Taiwan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('220', '0', 'Tajikistan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('221', '0', 'Tanzania', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('222', '0', 'Thailand', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('223', '0', 'The Bahamas', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('224', '0', 'Timor-Leste', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('225', '0', 'Togo', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('226', '0', 'Tokelau', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('227', '0', 'Tonga', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('228', '0', 'Trinidad and Tobago', '', '1', '', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('229', '0', 'Tunisia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('230', '0', 'Turkey', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('231', '0', 'Turkmenistan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('232', '0', 'Turks and Caicos Islands', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('233', '0', 'Tuvalu', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('234', '0', 'Uganda', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('235', '0', 'Ukraine', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('236', '0', 'United Arab Emirates', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('237', '0', 'United Kingdom', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('238', '0', 'United States', '', '1', '', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('239', '0', 'United States Minor Outlying Islands', '', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('240', '0', 'Uruguay', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('241', '0', 'US Virgin Islands', '', '1', '', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('242', '0', 'Uzbekistan', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('243', '0', 'Vanuatu', '', '1', '', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('244', '0', 'Vatican City', '', '1', '', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('245', '0', 'Venezuela', '', '1', '', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('246', '0', 'Vietnam', '', '1', '', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('247', '0', 'Wallis and Futuna', '', '1', '', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('248', '0', 'Western Sahara', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('249', '0', 'Yemen', '', '1', '', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('250', '0', 'Zambia', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('251', '0', 'Zimbabwe', '', '1', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('252', '0', 'Benelux', 'Benelux.png', '1', '21,127,154', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');
INSERT INTO tx_ecomtoolbox_domain_model_region VALUES ('253', '0', 'Scandinavia', '', '1', '61,70,75,120,126,165,216', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '', '');


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_state"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_state;
CREATE TABLE tx_ecomtoolbox_domain_model_state (
  uid int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  abbreviation varchar(255) NOT NULL default '',
  verified tinyint(1) unsigned NOT NULL default '0',
  country int(11) unsigned default '0',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  deleted tinyint(4) unsigned NOT NULL default '0',
  hidden tinyint(4) unsigned NOT NULL default '0',
  starttime int(11) unsigned NOT NULL default '0',
  endtime int(11) unsigned NOT NULL default '0',
  t3ver_oid int(11) NOT NULL default '0',
  t3ver_id int(11) NOT NULL default '0',
  t3ver_wsid int(11) NOT NULL default '0',
  t3ver_label varchar(255) NOT NULL default '',
  t3ver_state tinyint(4) NOT NULL default '0',
  t3ver_stage int(11) NOT NULL default '0',
  t3ver_count int(11) NOT NULL default '0',
  t3ver_tstamp int(11) NOT NULL default '0',
  t3ver_move_id int(11) NOT NULL default '0',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumblob,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY t3ver_oid (t3ver_oid,t3ver_wsid),
  KEY language (l10n_parent,sys_language_uid)
);


INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('1', '0', 'A Coruña', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('2', '0', 'Aargau', 'AG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('3', '0', 'Acre', 'AC', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('4', '0', 'Agrigento', 'AG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('5', '0', 'Aguascalientes', 'AGS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('6', '0', 'Ain', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('7', '0', 'Aisne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('8', '0', 'Alabama', 'AL', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('9', '0', 'Alagoas', 'AL', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('10', '0', 'Alaska', 'AK', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('11', '0', 'Alava', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('12', '0', 'Albacete', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('13', '0', 'Alberta', 'AB', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('14', '0', 'Alderney', 'ALD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('15', '0', 'Alessandria', 'AL', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('16', '0', 'Alicante', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('17', '0', 'Allier', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('18', '0', 'Almeria', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('19', '0', 'Alpes-de-Haute-Provence', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('20', '0', 'Alpes-Maritimes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('21', '0', 'Alsace', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('22', '0', 'Amapá', 'AP', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('23', '0', 'Amazonas', 'AM', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('24', '0', 'Ancona', 'AN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('25', '0', 'Antrim', 'ATM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('26', '0', 'Aosta', 'AO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('27', '0', 'Appenzell Ausserrhoden', 'AR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('28', '0', 'Appenzell Innerrhoden', 'AI', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('29', '0', 'Aquitaine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('30', '0', 'Ardèche', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('31', '0', 'Ardennes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('32', '0', 'Arezzo', 'AR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('33', '0', 'Ariège', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('34', '0', 'Arizona', 'AZ', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('35', '0', 'Arkansas', 'AR', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('36', '0', 'Armagh', 'ARM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('37', '0', 'Ascoli Piceno', 'AP', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('38', '0', 'Asti', 'AT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('39', '0', 'Asturias', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('40', '0', 'Aube', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('41', '0', 'Aude', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('42', '0', 'Australian Capital Territory', 'ACT', '1', '14', '1423147076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('43', '0', 'Auvergne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('44', '0', 'Avellino', 'AV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('45', '0', 'Aveyron', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('46', '0', 'Avila', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('47', '0', 'Badajoz', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('48', '0', 'Baden-Württemberg', 'BW', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('49', '0', 'Bahia', 'BA', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('50', '0', 'Baja California Norte', 'BC', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('51', '0', 'Baja California Sur', 'BCS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('52', '0', 'Baleares', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('53', '0', 'Barcelona', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('54', '0', 'Bari', 'BA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('55', '0', 'Barletta-Andria-Trani', 'BT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('56', '0', 'Bas-Rhin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('57', '0', 'Basel-Landschaft', 'BL', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('58', '0', 'Basel-Stadt', 'BS', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('59', '0', 'Basse-Normandie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('60', '0', 'Bavaria', 'BY', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('61', '0', 'Bedfordshire', 'BFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('62', '0', 'Belluno', 'BL', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('63', '0', 'Benevento', 'BN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('64', '0', 'Bergamo', 'BG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('65', '0', 'Berkshire', 'BRK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('66', '0', 'Berlin', 'BE', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('67', '0', 'Bern', 'BE', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('68', '0', 'Biella', 'BI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('69', '0', 'Birmingham', 'BIR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('70', '0', 'Bjelovar-Bilogora', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('71', '0', 'Blaenau Gwent', 'BLG', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('72', '0', 'Bologna', 'BO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('73', '0', 'Borders', 'BDS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('74', '0', 'Bouches-du-Rhône', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('75', '0', 'Bourgogne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('76', '0', 'Bozen', 'BZ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('77', '0', 'Brandenburg', 'BB', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('78', '0', 'Bremen', 'HB', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('79', '0', 'Brescia', 'BS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('80', '0', 'Bretagne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('81', '0', 'Bridgend', 'BRI', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('82', '0', 'Brindisi', 'BR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('83', '0', 'Bristol', 'BRS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('84', '0', 'British Columbia', 'BC', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('85', '0', 'Brod-Posavina', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('86', '0', 'Buckinghamshire', 'BUX', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('87', '0', 'Burgenland', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('88', '0', 'Burgos', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('89', '0', 'Caceres', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('90', '0', 'Cadiz', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('91', '0', 'Caerphilly', 'CAP', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('92', '0', 'Cagliari', 'CA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('93', '0', 'California', 'CA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('94', '0', 'Caltanissetta', 'CL', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('95', '0', 'Calvados', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('96', '0', 'Cambridgeshire', 'CBE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('97', '0', 'Campeche', 'CAM', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('98', '0', 'Campobasso', 'CB', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('99', '0', 'Cantabria', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('100', '0', 'Cantal', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('101', '0', 'Carbonia-Iglesias', 'CI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('102', '0', 'Cardiff', 'CAR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('103', '0', 'Carlow', 'CAR', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('104', '0', 'Carmarthenshire', 'CAS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('105', '0', 'Caserta', 'CE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('106', '0', 'Castellon', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('107', '0', 'Catania', 'CT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('108', '0', 'Catanzaro', 'CZ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('109', '0', 'Cavan', 'CAV', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('110', '0', 'Ceará', 'CE', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('111', '0', 'Central', 'CTR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('112', '0', 'Centre', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('113', '0', 'Ceredigion', 'CER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('114', '0', 'Ceuta', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('115', '0', 'Champagne-Ardenne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('116', '0', 'Channel Islands', 'CHI', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('117', '0', 'Charente', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('118', '0', 'Charente-Maritime', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('119', '0', 'Cher', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('120', '0', 'Cheshire', 'CHS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('121', '0', 'Chiapas', 'CHIS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('122', '0', 'Chieti', 'CH', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('123', '0', 'Chihuahua', 'CHIH', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('124', '0', 'Ciudad Real', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('125', '0', 'Clare', 'CLA', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('126', '0', 'Cleveland', 'CVE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('127', '0', 'Clipperton', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('128', '0', 'Clwyd', 'CLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('129', '0', 'Coahuila', 'COAH', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('130', '0', 'Colima', 'COL', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('131', '0', 'Colorado', 'CO', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('132', '0', 'Como', 'CO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('133', '0', 'Connecticut', 'CT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('134', '0', 'Conway', 'CON', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('135', '0', 'Cordoba', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('136', '0', 'Cork', 'COR', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('137', '0', 'Cornwall', 'CNL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('138', '0', 'Corrèze', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('139', '0', 'Corse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('140', '0', 'Corse-du-Sud', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('141', '0', 'Cosenza', 'CS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('142', '0', 'Côte-d\'Or', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('143', '0', 'Côtes-d\'Armor', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('144', '0', 'County Fermanagh', 'FMH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('145', '0', 'Cremona', 'CR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('146', '0', 'Creuse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('147', '0', 'Crotone', 'KR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('148', '0', 'Cuenca', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('149', '0', 'Cumbria', 'CBA', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('150', '0', 'Cuneo', 'CN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('151', '0', 'Delaware', 'DE', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('152', '0', 'Denbighshire', 'DEN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('153', '0', 'Derbyshire', 'DYS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('154', '0', 'Deux-Sèvres', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('155', '0', 'Devon', 'DVN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('156', '0', 'District of Columbia', 'DC', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('157', '0', 'Distrito Federal', 'DIF', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('158', '0', 'Distrito Federal', 'DF', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('159', '0', 'Dolnośląskie', 'DS', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('160', '0', 'Donegal', 'DON', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('161', '0', 'Dordogne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('162', '0', 'Dorset', 'DOR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('163', '0', 'Doubs', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('164', '0', 'Down', 'DWN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('165', '0', 'Drenthe', 'DR', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('166', '0', 'Drôme', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('167', '0', 'Dublin', 'DUB', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('168', '0', 'Dubrovnik-Neretva', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('169', '0', 'Dumfries and Galloway', 'DGL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('170', '0', 'Durango', 'DGO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('171', '0', 'Durham', 'DHM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('172', '0', 'Dyfed', 'DFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('173', '0', 'East Lothian', 'LTE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('174', '0', 'East Sussex', 'SXE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('175', '0', 'Enna', 'EN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('176', '0', 'Espírito Santo', 'ES', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('177', '0', 'Essex', 'ESX', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('178', '0', 'Essonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('179', '0', 'Eure', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('180', '0', 'Eure-et-Loir', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('181', '0', 'Fermanagh', 'FER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('182', '0', 'Fermo', 'FM', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('183', '0', 'Ferrara', 'FE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('184', '0', 'Fife', 'FFE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('185', '0', 'Finistère', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('186', '0', 'Florence', 'FI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('187', '0', 'Flevoland', 'FL', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('188', '0', 'Flintshire', 'FLI', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('189', '0', 'Florida', 'FL', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('190', '0', 'Foggia', 'FG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('191', '0', 'Forlì-Cesena', 'FC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('192', '0', 'Franche-Comté', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('193', '0', 'Freiburg', 'FR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('194', '0', 'Friesland', 'FR', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('195', '0', 'Frosinone', 'FR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('196', '0', 'Galway', 'GAL', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('197', '0', 'Gard', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('198', '0', 'Gelderland', 'GE', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('199', '0', 'Geneve', 'GE', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('200', '0', 'Genova', 'GE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('201', '0', 'Georgia', 'GA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('202', '0', 'Gers', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('203', '0', 'Girona', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('204', '0', 'Gironde', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('205', '0', 'Glarus', 'GL', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('206', '0', 'Gloucester', 'GLR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('207', '0', 'Gloucestershire', 'GLO', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('208', '0', 'Goiás', 'GO', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('209', '0', 'Gorizia', 'GO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('210', '0', 'City of Zagreb', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('211', '0', 'Grampian', 'GRN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('212', '0', 'Granada', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('213', '0', 'Graubünden', 'GR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('214', '0', 'Greater London', 'LDN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('215', '0', 'Greater Manchester', 'MCH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('216', '0', 'Groningen', 'GR', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('217', '0', 'Grosseto', 'GR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('218', '0', 'Guadalajara', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('219', '0', 'Guadeloupe', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('220', '0', 'Guam', 'GU', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('221', '0', 'Guanajuato', 'GTO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('222', '0', 'Guernsey', 'GUR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('223', '0', 'Guerrero', 'GRO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('224', '0', 'Guipuzcoa', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('225', '0', 'French Guiana', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('226', '0', 'Gwent', 'GWT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('227', '0', 'Gwynedd', 'GDD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('228', '0', 'Hamburg', 'HH', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('229', '0', 'Hampshire', 'HPH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('230', '0', 'Haut-Rhin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('231', '0', 'Haute-Corse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('232', '0', 'Haute-Garonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('233', '0', 'Haute-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('234', '0', 'Haute-Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('235', '0', 'Haute-Normandie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('236', '0', 'Haute-Saône', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('237', '0', 'Haute-Savoie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('238', '0', 'Haute-Vienne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('239', '0', 'Hautes-Alpes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('240', '0', 'Hautes-Pyrénées', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('241', '0', 'Hauts-de-Seine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('242', '0', 'Hawaii', 'HI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('243', '0', 'Hérault', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('244', '0', 'Hereford and Worcester', 'HWR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('245', '0', 'Hertfordshire', 'HFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('246', '0', 'Hesse', 'HE', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('247', '0', 'Hidalgo', 'HGO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('248', '0', 'Highlands', 'HLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('249', '0', 'Huelva', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('250', '0', 'Huesca', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('251', '0', 'Humberside', 'HBS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('252', '0', 'Idaho', 'ID', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('253', '0', 'Île-de-France', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('254', '0', 'Ille-et-Vilaine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('255', '0', 'Illinois', 'IL', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('256', '0', 'Imperia', 'IM', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('257', '0', 'Indiana', 'IN', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('258', '0', 'Indre', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('259', '0', 'Indre-et-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('260', '0', 'Iowa', 'IA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('261', '0', 'Isère', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('262', '0', 'Isernia', 'IS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('263', '0', 'Isle of Anglesey', 'ISL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('264', '0', 'Isle of Man', 'IOM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('265', '0', 'Isle of Wight', 'IOW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('266', '0', 'Istria', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('267', '0', 'Jaen', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('268', '0', 'Jalisco', 'JAL', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('269', '0', 'Jersey', 'JER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('270', '0', 'Jura', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('271', '0', 'Jura', 'JU', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('272', '0', 'Kansas', 'KS', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('273', '0', 'Karlovac', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('274', '0', 'Carinthia', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('275', '0', 'Kent', 'KNT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('276', '0', 'Kentucky', 'KY', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('277', '0', 'Kerry', 'KER', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('278', '0', 'Kildare', 'KIL', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('279', '0', 'Kilkenny', 'KLK', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('280', '0', 'Koprivnica-Križevci', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('281', '0', 'Krapina-Zagorje', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('282', '0', 'Kujawsko-pomorskie', 'KP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('283', '0', 'L\'Aquila', 'AQ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('284', '0', 'Réunion', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('285', '0', 'La Rioja', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('286', '0', 'La Spezia', 'SP', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('287', '0', 'Lancashire', 'LNH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('288', '0', 'Landes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('289', '0', 'Languedoc-Roussillon', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('290', '0', 'Laois', 'LAO', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('291', '0', 'Las Palmas', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('292', '0', 'Latina', 'LT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('293', '0', 'Lecce', 'LE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('294', '0', 'Lecco', 'LC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('295', '0', 'Leicestershire', 'LEC', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('296', '0', 'Leitrim', 'LEI', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('297', '0', 'Leon', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('298', '0', 'Lika-Senj', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('299', '0', 'Limburg', 'LI', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('300', '0', 'Limerick', 'LIM', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('301', '0', 'Limousin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('302', '0', 'Lincolnshire', 'LCN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('303', '0', 'Livorno', 'LI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('304', '0', 'Lleida', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('305', '0', 'Lodi', 'LO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('306', '0', 'Loir-et-Cher', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('307', '0', 'Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('308', '0', 'Loire-Atlantique', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('309', '0', 'Loiret', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('310', '0', 'London', 'LON', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('311', '0', 'Londonderry', 'LDR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('312', '0', 'Longford', 'LON', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('313', '0', 'Lorraine', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('314', '0', 'Lot', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('315', '0', 'Lot-et-Garonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('316', '0', 'Louisiana', 'LA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('317', '0', 'Louth', 'LOU', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('318', '0', 'Lozère', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('319', '0', 'Lubelskie', 'LU', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('320', '0', 'Lubuskie', 'LB', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('321', '0', 'Lucca', 'LU', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('322', '0', 'Lugo', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('323', '0', 'Luzern', 'LU', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('324', '0', 'Macerata', 'MC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('325', '0', 'Madrid', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('326', '0', 'Maine', 'ME', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('327', '0', 'Maine-et-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('328', '0', 'Malaga', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('329', '0', 'Manche', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('330', '0', 'Manitoba', 'MB', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('331', '0', 'Mantova', 'MN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('332', '0', 'Maranhão', 'MA', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('333', '0', 'Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('334', '0', 'Martinique', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('335', '0', 'Maryland', 'MD', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('336', '0', 'Massa Carrara', 'MS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('337', '0', 'Massachusetts', 'MA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('338', '0', 'Matera', 'MT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('339', '0', 'Mato Grosso', 'MT', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('340', '0', 'Mato Grosso do Sul', 'MS', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('341', '0', 'Mayenne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('342', '0', 'Mayo', 'MAY', '1', '104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('343', '0', 'Mayotte', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('344', '0', 'Mazowieckie', 'MZ', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('345', '0', 'Małopolskie', 'MA', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('346', '0', 'Meath', 'MEA', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('347', '0', 'Mecklenburg-Western Pomerania', 'MV', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('348', '0', 'Medio Campidano', 'VS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('349', '0', 'Melilla', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('350', '0', 'Merseyside', 'MSY', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('351', '0', 'Merthyr Tydfil', 'MER', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('352', '0', 'Messina', 'ME', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('353', '0', 'Meurthe-et-Moselle', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('354', '0', 'Meuse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('355', '0', 'México', 'MEX', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('356', '0', 'Međimurje', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('357', '0', 'Michigan', 'MI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('358', '0', 'Michoacán', 'MICH', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('359', '0', 'Mid Glamorgan', 'GNM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('360', '0', 'Mid Lothian', 'LTM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('361', '0', 'Midi-Pyrénées', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('362', '0', 'Milano', 'MI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('363', '0', 'Minas Gerais', 'MG', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('364', '0', 'Minnesota', 'MN', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('365', '0', 'Mississippi', 'MS', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('366', '0', 'Missouri', 'MO', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('367', '0', 'Modena', 'MO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('368', '0', 'Monaghan', 'MON', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('369', '0', 'Monmouthshire', 'MON', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('370', '0', 'Montana', 'MT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('371', '0', 'Monza e Brianza', 'MB', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('372', '0', 'Morbihan', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('373', '0', 'Morelos', 'MOR', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('374', '0', 'Moselle', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('375', '0', 'Murcia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('376', '0', 'Naples', 'NA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('377', '0', 'Navarra', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('378', '0', 'Nayarit', 'NAY', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('379', '0', 'Neath Port Talbot', 'NET', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('380', '0', 'Nebraska', 'NE', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('381', '0', 'Neuenburg', 'NE', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('382', '0', 'Nevada', 'NV', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('383', '0', 'New Brunswick', 'NB', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('384', '0', 'New Hampshire', 'NH', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('385', '0', 'New Jersey', 'NJ', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('386', '0', 'New Mexico', 'NM', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('387', '0', 'New South Wales', 'NSW', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('388', '0', 'New York', 'NY', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('389', '0', 'Newfoundland and Labrabor', 'NF', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('390', '0', 'Newport', 'NEW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('391', '0', 'Nidwalden', 'NW', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('392', '0', 'Lower Austria', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('393', '0', 'Lower Saxony', 'NI', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('394', '0', 'Nièvre', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('395', '0', 'Noord-Brabant', 'NB', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('396', '0', 'Noord-Holland', 'NH', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('397', '0', 'Nord', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('398', '0', 'Nord-Pas-de-Calais', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('399', '0', 'North Rhine-Westphalia', 'NW', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('400', '0', 'Norfolk', 'NOR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('401', '0', 'North Carolina', 'NC', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('402', '0', 'North Dakota', 'ND', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('403', '0', 'North West Highlands', 'NWH', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('404', '0', 'North Yorkshire', 'YSN', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('405', '0', 'Northamptonshire', 'NHM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('406', '0', 'Northern Territory', 'NT', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('407', '0', 'Northumberland', 'NLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('408', '0', 'Northwest Territories', 'NT', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('409', '0', 'Nottinghamshire', 'NOT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('410', '0', 'New Caledonia', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('411', '0', 'Nova Scotia', 'NS', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('412', '0', 'Novara', 'NO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('413', '0', 'Nuevo León', 'NL', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('414', '0', 'Nunavut', 'NU', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('415', '0', 'Nuoro', 'NU', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('416', '0', 'Oaxaca', 'OAX', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('417', '0', 'Upper Austria', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('418', '0', 'Obwalden', 'OW', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('419', '0', 'Offaly', 'OFF', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('420', '0', 'Ogliastra', 'OG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('421', '0', 'Ohio', 'OH', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('422', '0', 'Oise', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('423', '0', 'Oklahoma', 'OK', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('424', '0', 'Olbia-Tempio', 'OT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('425', '0', 'Ontario', 'ON', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('426', '0', 'Opolskie', 'OP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('427', '0', 'Oregon', 'OR', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('428', '0', 'Oristano', 'OR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('429', '0', 'Orkney', 'ORK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('430', '0', 'Orne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('431', '0', 'Osijek-Baranja', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('432', '0', 'Ourense', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('433', '0', 'Overijssel', 'OV', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('434', '0', 'Oxfordshire', 'OFE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('435', '0', 'Padova', 'PD', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('436', '0', 'Palencia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('437', '0', 'Palermo', 'PA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('438', '0', 'Pará', 'PA', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('439', '0', 'Paraíba', 'PB', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('440', '0', 'Paraná', 'PR', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('441', '0', 'Paris', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('442', '0', 'Parma', 'PR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('443', '0', 'Pas-de-Calais', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('444', '0', 'Pavia', 'PV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('445', '0', 'Pays de la Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('446', '0', 'Pembrokeshire', 'PEM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('447', '0', 'Pennsylvania', 'PA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('448', '0', 'Pernambuco', 'PE', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('449', '0', 'Perugia', 'PG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('450', '0', 'Pesaro e Urbino', 'PU', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('451', '0', 'Pescara', 'PE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('452', '0', 'Piacenza', 'PC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('453', '0', 'Piauí', 'PI', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('454', '0', 'Picardie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('455', '0', 'Pisa', 'PI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('456', '0', 'Pistoia', 'PT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('457', '0', 'Podkarpackie', 'PK', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('458', '0', 'Podlaskie', 'PD', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('459', '0', 'Poitou-Charentes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('460', '0', 'French Polynesia', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('461', '0', 'Pomorskie', 'PM', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('462', '0', 'Pontevedra', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('463', '0', 'Pordenone', 'PN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('464', '0', 'Potenza', 'PZ', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('465', '0', 'Powys', 'PWS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('466', '0', 'Požega-Slavonia', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('467', '0', 'Prato', 'PO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('468', '0', 'Primorje-Gorski Kotar', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('469', '0', 'Prince Edward Island', 'PE', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('470', '0', 'Provence-Alpes-Côte d\'Azur', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('471', '0', 'Puebla', 'PUE', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('472', '0', 'Puerto Rico', 'PR', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('473', '0', 'Puy-de-Dôme', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('474', '0', 'Pyrénées-Atlantiques', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('475', '0', 'Pyrénées-Orientales', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('476', '0', 'Quebec', 'QC', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('477', '0', 'Queensland', 'QLD', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('478', '0', 'Querétaro', 'QRO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('479', '0', 'Quintana Roo', 'QROO', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('480', '0', 'Ragusa', 'RG', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('481', '0', 'Ravenna', 'RA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('482', '0', 'Reggio Calabria', 'RC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('483', '0', 'Reggio Emilia', 'RE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('484', '0', 'Rhineland-Palatinate', 'RP', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('485', '0', 'Rhode Island', 'RI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('486', '0', 'Rhondda Cynon Taff', 'TAF', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('487', '0', 'Rhône', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('488', '0', 'Rhône-Alpes', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('489', '0', 'Rieti', 'RI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('490', '0', 'Rimini', 'RN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('491', '0', 'Rio de Janeiro', 'RJ', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('492', '0', 'Rio Grande do Norte', 'RN', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('493', '0', 'Rio Grande do Sul', 'RS', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('494', '0', 'Rome', 'RM', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('495', '0', 'Rondônia', 'RO', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('496', '0', 'Roraima', 'RR', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('497', '0', 'Roscommon', 'ROS', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('498', '0', 'Rovigo', 'RO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('499', '0', 'Saarland', 'SL', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('500', '0', 'Saxony', 'SN', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('501', '0', 'Saxony-Anhalt', 'ST', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('502', '0', 'Saint Barthélemy', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('503', '0', 'Saint Martin', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('504', '0', 'Saint Pierre and Miquelon', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('505', '0', 'Salamanca', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('506', '0', 'Salerno', 'SA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('507', '0', 'Salzburg', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('508', '0', 'San Luis Potosí', 'SLP', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('509', '0', 'Santa Catarina', 'SC', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('510', '0', 'São Paulo', 'SP', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('511', '0', 'Saône-et-Loire', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('512', '0', 'Sark', 'SRK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('513', '0', 'Sarthe', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('514', '0', 'Saskatchewan', 'SK', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('515', '0', 'Sassari', 'SS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('516', '0', 'Savoie', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('517', '0', 'Savona', 'SV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('518', '0', 'Schaffhausen', 'SH', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('519', '0', 'Schleswig-Holstein', 'SH', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('520', '0', 'Schwyz', 'SZ', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('521', '0', 'Segovia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('522', '0', 'Seine-et-Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('523', '0', 'Seine-Maritime', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('524', '0', 'Seine-Saint-Denis', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('525', '0', 'Sergipe', 'SE', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('526', '0', 'Sevilla', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('527', '0', 'Shetland', 'SLD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('528', '0', 'Shropshire', 'SPE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('529', '0', 'Šibenik-Knin', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('530', '0', 'Siena', 'SI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('531', '0', 'Sinaloa', 'SIN', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('532', '0', 'Siracusa', 'SR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('533', '0', 'Sisak-Moslavina', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('534', '0', 'Śląskie', 'SL', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('535', '0', 'Sligo', 'SLI', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('536', '0', 'Solothurn', 'SO', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('537', '0', 'Somerset', 'SOM', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('538', '0', 'Somme', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('539', '0', 'Sondrio', 'SO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('540', '0', 'Sonora', 'SON', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('541', '0', 'Soria', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('542', '0', 'South Australia', 'SA', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('543', '0', 'South Carolina', 'SC', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('544', '0', 'South Dakota', 'SD', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('545', '0', 'South Glamorgan', 'GNS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('546', '0', 'South Yorkshire', 'YSS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('547', '0', 'Split-Dalmatia', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('548', '0', 'St. Gallen', 'SG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('549', '0', 'Staffordshire', 'SFD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('550', '0', 'Styria', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('551', '0', 'Strathclyde', 'SCD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('552', '0', 'Suffolk', 'SFK', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('553', '0', 'Surrey', 'SRY', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('554', '0', 'Swansea', 'SWA', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('555', '0', 'Świętokrzyskie', 'SK', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('556', '0', 'Tabasco', 'TAB', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('557', '0', 'Tamaulipas', 'TAMPS', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('558', '0', 'Taranto', 'TA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('559', '0', 'Tarn', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('560', '0', 'Tarn-et-Garonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('561', '0', 'Tarragona', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('562', '0', 'Tasmania', 'TAS', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('563', '0', 'Tayside', 'TYS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('564', '0', 'Tenerife', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('565', '0', 'Tennessee', 'TN', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('566', '0', 'Teramo', 'TE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('567', '0', 'Terni', 'TR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('568', '0', 'French Southern Territories', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('569', '0', 'Territoire de Belfort', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('570', '0', 'Teruel', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('571', '0', 'Tessin', 'TI', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('572', '0', 'Texas', 'TX', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('573', '0', 'Thurgau', 'TG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('574', '0', 'Thuringia', 'TH', '1', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('575', '0', 'Tipperary', 'TIP', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('576', '0', 'Tyrol', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('577', '0', 'Tlaxcala', 'TLAX', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('578', '0', 'Tocantins', 'TO', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('579', '0', 'Toledo', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('580', '0', 'Torfaen', 'TOR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('581', '0', 'Torino', 'TO', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('582', '0', 'Trapani', 'TP', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('583', '0', 'Trento', 'TN', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('584', '0', 'Treviso', 'TV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('585', '0', 'Trieste', 'TS', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('586', '0', 'Tyne and Wear', 'TWR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('587', '0', 'Tyrone', 'TYR', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('588', '0', 'Udine', 'UD', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('589', '0', 'Uri', 'UR', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('590', '0', 'Utah', 'UT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('591', '0', 'Utrecht', 'UT', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('592', '0', 'Val-d\'Oise', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('593', '0', 'Val-de-Marne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('594', '0', 'Vale of Glamorgan', 'VAL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('595', '0', 'Valencia', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('596', '0', 'Valladolid', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('597', '0', 'Var', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('598', '0', 'Varaždin', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('599', '0', 'Varese', 'VA', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('600', '0', 'Vaucluse', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('601', '0', 'Vendée', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('602', '0', 'Venice', 'VE', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('603', '0', 'Veracruz', 'VER', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('604', '0', 'Verbano-Cusio-Ossola', 'VB', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('605', '0', 'Vercelli', 'VC', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('606', '0', 'Vermont', 'VT', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('607', '0', 'Verona', 'VR', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('608', '0', 'Vibo Valentia', 'VV', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('609', '0', 'Vicenza', 'VI', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('610', '0', 'Victoria', 'VIC', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('611', '0', 'Vienne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('612', '0', 'Virginia', 'VA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('613', '0', 'Virovitica-Podravina', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('614', '0', 'Viterbo', 'VT', '1', '109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('615', '0', 'Vizcaya', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('616', '0', 'Vorarlberg', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('617', '0', 'Vosges', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('618', '0', 'Vukovar-Syrmia', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('619', '0', 'Waadt', 'VD', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('620', '0', 'Wallis', 'VS', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('621', '0', 'Wallis and Futuna', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('622', '0', 'Warmińsko-mazurskie', 'WN', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('623', '0', 'Warwickshire', 'WKS', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('624', '0', 'Washington', 'WA', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('625', '0', 'Waterford', 'WAT', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('626', '0', 'West Glamorgan', 'GNW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('627', '0', 'West Lothian', 'LTW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('628', '0', 'West Midlands', 'WMD', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('629', '0', 'West Sussex', 'SXW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('630', '0', 'West Virginia', 'WV', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('631', '0', 'West Yorkshire', 'YSW', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('632', '0', 'Western Australia', 'WA', '1', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('633', '0', 'Western Isles', 'WIL', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('634', '0', 'Westmeath', 'WES', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('635', '0', 'Wexford', 'WEX', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('636', '0', 'Wicklow', 'WIC', '1', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('637', '0', 'Wielkopolskie', 'WP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('638', '0', 'Vienna', '', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('639', '0', 'Wiltshire', 'WLT', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('640', '0', 'Wisconsin', 'WI', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('641', '0', 'Wrexham', 'WRE', '1', '237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('642', '0', 'Wyoming', 'WY', '1', '238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('643', '0', 'Yonne', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('644', '0', 'Yucatán', 'YUC', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('645', '0', 'Yukon Territory', 'YT', '1', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('646', '0', 'Yvelines', '', '1', '76', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('647', '0', 'Zacatecas', 'ZAC', '1', '141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('648', '0', 'Zachodniopomorskie', 'ZP', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('649', '0', 'Zadar', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('650', '0', 'Zagreb', '', '1', '56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('651', '0', 'Zamora', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('652', '0', 'Zaragoza', '', '1', '210', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('653', '0', 'Zeeland', 'ZE', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('654', '0', 'Zug', 'ZG', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('655', '0', 'Zuid-Holland', 'ZH', '1', '154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('656', '0', 'Zürich', 'ZH', '1', '217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_state VALUES ('657', '0', 'Łódzkie', 'LD', '1', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: testing
#--------------------------------------------------------


#
# Table structure for table "tx_ecomtoolbox_domain_model_territory"
#
DROP TABLE IF EXISTS tx_ecomtoolbox_domain_model_territory;
CREATE TABLE tx_ecomtoolbox_domain_model_territory (
  uid int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  verified tinyint(1) unsigned NOT NULL default '0',
  tstamp int(11) unsigned NOT NULL default '0',
  crdate int(11) unsigned NOT NULL default '0',
  cruser_id int(11) unsigned NOT NULL default '0',
  deleted tinyint(4) unsigned NOT NULL default '0',
  hidden tinyint(4) unsigned NOT NULL default '0',
  starttime int(11) unsigned NOT NULL default '0',
  endtime int(11) unsigned NOT NULL default '0',
  t3ver_oid int(11) NOT NULL default '0',
  t3ver_id int(11) NOT NULL default '0',
  t3ver_wsid int(11) NOT NULL default '0',
  t3ver_label varchar(255) NOT NULL default '',
  t3ver_state tinyint(4) NOT NULL default '0',
  t3ver_stage int(11) NOT NULL default '0',
  t3ver_count int(11) NOT NULL default '0',
  t3ver_tstamp int(11) NOT NULL default '0',
  t3ver_move_id int(11) NOT NULL default '0',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumblob,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY t3ver_oid (t3ver_oid,t3ver_wsid),
  KEY language (l10n_parent,sys_language_uid)
);


INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('1', '0', 'Africa', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('2', '0', 'Oceania', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('3', '0', 'Americas', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('4', '0', 'Asia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('5', '0', 'Europe', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('6', '0', 'Eastern Asia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('7', '0', 'South-eastern Asia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('8', '0', 'Central Asia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('9', '0', 'Western Asia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('10', '0', 'Southern Europe', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('11', '0', 'Eastern Europe', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('12', '0', 'Northern Europe', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('13', '0', 'Western Europe', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('14', '0', 'Middle East', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('15', '0', 'Southern Asia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('16', '0', 'South America', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('17', '0', 'Central America', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('18', '0', 'Northern America', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('19', '0', 'Caribbean', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('20', '0', 'Western Africa', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('21', '0', 'Eastern Africa', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('22', '0', 'Northern Africa', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('23', '0', 'Middle Africa', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('24', '0', 'Southern Africa', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('25', '0', 'Australia and New Zealand', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('26', '0', 'Melanesia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('27', '0', 'Micronesian Region', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);
INSERT INTO tx_ecomtoolbox_domain_model_territory VALUES ('28', '0', 'Polynesia', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', NULL);


