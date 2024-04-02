--------------------------------------------------------
--------------------------------------------------------
--Database Name: Centralized Configuration
--Database Description: This database was developed to provide a database module to define configuration options that can be used by any Oracle database modules
--------------------------------------------------------
--------------------------------------------------------


--------------------------------------------------------
--Centralized Configuration - version 1.0 rollback:
--------------------------------------------------------


DROP TRIGGER CC_CONFIG_OPTIONS_AUTO_BRI;

DROP TRIGGER CC_CONFIG_OPTIONS_AUTO_BRU;


DROP SEQUENCE CC_CONFIG_OPTIONS_SEQ;

DROP TABLE CC_CONFIG_OPTIONS;




DROP TRIGGER TRG_CC_CONFIG_OPTIONS_HIST;

DROP SEQUENCE CC_CONFIG_OPTIONS_HIST_SEQ;

DROP TABLE CC_CONFIG_OPTIONS_HIST;


--drop DB upgrade log record for the DB version being rolled back
DELETE FROM DB_UPGRADE_LOGS WHERE UPGRADE_APP_NAME = 'Centralized Configuration' AND UPGRADE_VERSION =  '1.0';

--commit the DB_UPGRADE_LOGS record deletion
COMMIT;
