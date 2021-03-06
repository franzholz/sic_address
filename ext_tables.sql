
#
# Table structure for table 'tx_sicaddress_domain_model_address'
#
CREATE TABLE tx_sicaddress_domain_model_address (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	categories int(11) unsigned DEFAULT '0' NOT NULL,

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,
	deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
	hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
	starttime int(11) unsigned DEFAULT '0' NOT NULL,
	endtime int(11) unsigned DEFAULT '0' NOT NULL,
	sorting int(11) DEFAULT '0' NOT NULL,
	fe_group varchar(100) DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,
	l10n_state text,

	PRIMARY KEY (uid),
	KEY parent (pid),
  KEY language (l10n_parent,sys_language_uid)
);


CREATE TABLE sys_category (
  sic_address_marker int(10) unsigned default '0',
);

#
# Table structure for table 'tx_sicaddress_domain_model_domainproperty'
#
CREATE TABLE tx_sicaddress_domain_model_domainproperty (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	title varchar(255) DEFAULT '' NOT NULL,
	tca_label varchar(255) DEFAULT '' NOT NULL,
	tca_override text NOT NULL,
	settings text NOT NULL,
	is_list_label SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
	external SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
	type varchar(255) DEFAULT '' NOT NULL,

	tstamp int(11) UNSIGNED DEFAULT '0' NOT NULL,
	crdate int(11) UNSIGNED DEFAULT '0' NOT NULL,
	cruser_id int(11) UNSIGNED DEFAULT '0' NOT NULL,
	deleted SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
	hidden SMALLINT UNSIGNED DEFAULT 0 NOT NULL,
	starttime int(11) UNSIGNED DEFAULT '0' NOT NULL,
	endtime int(11) UNSIGNED DEFAULT '0' NOT NULL,
	sorting int(11) DEFAULT '0' NOT NULL,
	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,
	l10n_state TEXT DEFAULT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid),
	KEY language (l10n_parent,sys_language_uid)
);
