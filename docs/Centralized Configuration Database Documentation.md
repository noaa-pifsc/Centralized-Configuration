# Centralized Configuration Database - Technical Documentation

## Overview:
The Centralized Configuration (CC) project was developed to provide a database module to define configuration options that can be used by any Oracle database modules.  The database is capable of defining multiple configuration variables for one or more database modules in a centralized data table.  

## Resources:
-   CC Version Control Information:
    -   URL: git@picgitlab.nmfs.local:centralized-data-tools/centralized-configuration.git
    -   Database: 1.1 (Git tag: centralized_configuration_db_v1.1)
-   [Database Naming Conventions](./Centralized%20Configuration%20-%20DB%20Naming%20Conventions.md)
-   [Database Diagram](./data_model/CEN_CONFIG_diagram.pdf)
    -   [Documentation](./Centralized%20Configuration%20DB%20Diagram%20Documentation.md)

## Database Setup:
-   The [Database Version Control Module (VCM)](https://github.com/PIFSC-NMFS-NOAA/Database-Version-Control-Module) must be installed on the given schema before the DB Logging Module can be installed.
    -   VCM Version Control Information:
    -   URL: git@github.com:PIFSC-NMFS-NOAA/PIFSC-DBVersionControlModule.git
    -   Application: 1.0 (Git tag: db_vers_ctrl_v1.0)
    -   Database: 0.2 (Git tag: db_vers_ctrl_db_v0.2)
-   [Installing or Upgrading the Database](./Centralized%20Configuration%20-%20Installing%20or%20Upgrading%20the%20Database.md)

## Features:
-   Data history tracking package
    -   Version Control Information:
        -   URL: svn://badfish.pifsc.gov/Oracle/DSC/trunk/apps/db/dsc/dsc_pkgs
            -   Files: dsc_cre_hist_objs_pkg.pks (package specs) and dsc_cre_hist_objs_pkg.pkb (package body)
        -   Database: N/A (last update on 4/21/2009)
    -   Description: This was developed by the PIFSC Systems Design Team (SDT) to track data changes to a given table over time to facilitate accountability, troubleshooting, etc.  The Centralized Configuration tables have had this functionality enabled.  The DSC_CRE_HIST_OBJS_PKG package is defined in the DSC schema, the CRE_HIST_TRG() procedure was executed using the data schema.  
-   The [Centralized Configuration Data Generator Worksheet](./cc_data_generator.xlsx) can be used to generate DML INSERT statements to load configuration records.
