--------------------------------------------------------
--------------------------------------------------------
--Database Name: Centralized Configuration
--Database Description: This database was developed to provide a database module to define configuration options that can be used by any Oracle database modules
--------------------------------------------------------
--------------------------------------------------------


--------------------------------------------------------
--Centralized Configuration - version 1.1 updates:
--------------------------------------------------------


DROP INDEX CC_CONFIG_OPTIONS_U1;

ALTER TABLE CC_CONFIG_OPTIONS ADD CONSTRAINT CC_CONFIG_OPTIONS_U1 UNIQUE
(
  OPTION_NAME
)
ENABLE;


--drop DB upgrade log record for the DB version being rolled back
DELETE FROM DB_UPGRADE_LOGS WHERE UPGRADE_APP_NAME = 'Centralized Configuration' AND UPGRADE_VERSION =  '1.1';

--commit the DB_UPGRADE_LOGS record deletion
COMMIT;
