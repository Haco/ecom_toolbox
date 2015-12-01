#
# Table structure for table 'tx_ecomtoolbox_domain_model_language'
#
CREATE TABLE tx_ecomtoolbox_domain_model_language (

	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	title varchar(255) DEFAULT '' NOT NULL,
	sys_language int(11) DEFAULT '0' NOT NULL,
	flag varchar(20) DEFAULT '' NOT NULL,

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid)

);

#
# Table structure for table 'tx_ecomtoolbox_domain_model_region'
#
CREATE TABLE tx_ecomtoolbox_domain_model_region (

	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	title varchar(255) DEFAULT '' NOT NULL,
	type int(11) DEFAULT '0' NOT NULL,
	iso_code_a2 varchar(255) DEFAULT '' NOT NULL,
	iso_code_a3 varchar(255) DEFAULT '' NOT NULL,
	flag_icon_name varchar(255) DEFAULT '' NOT NULL,
	verified tinyint(1) unsigned DEFAULT '0' NOT NULL,
	countries text NOT NULL,
	territory int(11) unsigned DEFAULT '0',

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,
	deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
	hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
	starttime int(11) unsigned DEFAULT '0' NOT NULL,
	endtime int(11) unsigned DEFAULT '0' NOT NULL,

	t3ver_oid int(11) DEFAULT '0' NOT NULL,
	t3ver_id int(11) DEFAULT '0' NOT NULL,
	t3ver_wsid int(11) DEFAULT '0' NOT NULL,
	t3ver_label varchar(255) DEFAULT '' NOT NULL,
	t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
	t3ver_stage int(11) DEFAULT '0' NOT NULL,
	t3ver_count int(11) DEFAULT '0' NOT NULL,
	t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
	t3ver_move_id int(11) DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY t3ver_oid (t3ver_oid,t3ver_wsid),
 KEY language (l10n_parent,sys_language_uid)

);

#
# Table structure for table 'tx_ecomtoolbox_domain_model_state'
#
CREATE TABLE tx_ecomtoolbox_domain_model_state (

	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	title varchar(255) DEFAULT '' NOT NULL,
	abbreviation varchar(255) DEFAULT '' NOT NULL,
	verified tinyint(1) unsigned DEFAULT '0' NOT NULL,
	country int(11) unsigned DEFAULT '0',

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,
	deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
	hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
	starttime int(11) unsigned DEFAULT '0' NOT NULL,
	endtime int(11) unsigned DEFAULT '0' NOT NULL,

	t3ver_oid int(11) DEFAULT '0' NOT NULL,
	t3ver_id int(11) DEFAULT '0' NOT NULL,
	t3ver_wsid int(11) DEFAULT '0' NOT NULL,
	t3ver_label varchar(255) DEFAULT '' NOT NULL,
	t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
	t3ver_stage int(11) DEFAULT '0' NOT NULL,
	t3ver_count int(11) DEFAULT '0' NOT NULL,
	t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
	t3ver_move_id int(11) DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY t3ver_oid (t3ver_oid,t3ver_wsid),
 KEY language (l10n_parent,sys_language_uid)

);

#
# Table structure for table 'tx_ecomtoolbox_domain_model_territory'
#
CREATE TABLE tx_ecomtoolbox_domain_model_territory (

	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	title varchar(255) DEFAULT '' NOT NULL,
	verified tinyint(1) unsigned DEFAULT '0' NOT NULL,

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,
	deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
	hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
	starttime int(11) unsigned DEFAULT '0' NOT NULL,
	endtime int(11) unsigned DEFAULT '0' NOT NULL,

	t3ver_oid int(11) DEFAULT '0' NOT NULL,
	t3ver_id int(11) DEFAULT '0' NOT NULL,
	t3ver_wsid int(11) DEFAULT '0' NOT NULL,
	t3ver_label varchar(255) DEFAULT '' NOT NULL,
	t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
	t3ver_stage int(11) DEFAULT '0' NOT NULL,
	t3ver_count int(11) DEFAULT '0' NOT NULL,
	t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
	t3ver_move_id int(11) DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY t3ver_oid (t3ver_oid,t3ver_wsid),
 KEY language (l10n_parent,sys_language_uid)

);

#
# Table structure for table 'tx_news_domain_model_news'
#
CREATE TABLE tx_news_domain_model_news (
	ecom_event_name varchar(255) DEFAULT '' NOT NULL,
	ecom_event_host varchar(255) DEFAULT '' NOT NULL,
	ecom_event_consultants text NOT NULL,
	ecom_event_website varchar(255) DEFAULT '' NOT NULL,
	ecom_event_date int(11) DEFAULT '0' NOT NULL,
	ecom_event_end int(11) DEFAULT '0' NOT NULL,
	ecom_event_open_from int(11) DEFAULT '0' NOT NULL,
	ecom_event_open_till int(11) DEFAULT '0' NOT NULL,
	ecom_event_booth varchar(255) DEFAULT '' NOT NULL,
	ecom_event_country int(11) unsigned DEFAULT '0',
	ecom_event_state int(11) unsigned DEFAULT '0',
	ecom_event_zip varchar(255) DEFAULT '' NOT NULL,
	ecom_event_city varchar(255) DEFAULT '' NOT NULL,
	ecom_event_address text NOT NULL,
	ecom_event_maps_location varchar(255) DEFAULT '' NOT NULL,
	ecom_event_industries int(11) DEFAULT '0' NOT NULL,
	ecom_event_industries_custom text NOT NULL,
	ecom_event_settings int(11) DEFAULT '0' NOT NULL,
	ecom_blogpost_visits int(11) unsigned DEFAULT '0' NOT NULL
);

#
# Table structure for table 'sys_category'
#
CREATE TABLE sys_category (
	tx_ext_type varchar(255) NOT NULL default '',
	tx_realurl_pathsegment VARCHAR(255) DEFAULT '' NOT NULL
);

#
# Table structure for table 'sys_file_reference'
#
CREATE TABLE sys_file_reference (
	hideinpost tinyint(4) DEFAULT '0' NOT NULL
);

#
# Table structure for table 'fe_users'
#
CREATE TABLE fe_users (
	gender int(11) default '-1',
	ecom_toolbox_country int(11) unsigned DEFAULT '0',
	ecom_toolbox_state int(11) unsigned DEFAULT '0',
	privacy_policy tinyint(4) unsigned DEFAULT '0' NOT NULL
);