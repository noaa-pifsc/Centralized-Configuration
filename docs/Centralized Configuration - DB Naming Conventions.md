# Centralized Configuration Database Naming Conventions

## Overview:
When developing a database it is important to use consistent naming conventions so that database objects and associated fields are easily understandable. Consistent prefixes can be used to differentiate between the core data objects being managed in the database and the data objects for the various modules installed. Consistent object suffixes indicate what each object represents and what type of data each field contains. Oracle requires object names and field names to have a maximum of 30 characters so abbreviations are required to keep the length within the acceptable range, consistent abbreviations improve the usability of the database. The underscore character should be used to separate the various abbreviations for objects/fields. The [PIFSC-ITS DB naming and coding standards](https://drive.google.com/file/d/1KCOST_uNqcBVuw3GV3Wz0BuzBGKPvDwD/view?usp=sharing) defines database naming standards for PIFSC. For all installed database modules refer to the corresponding modules’ database naming convention documentation. This document defines the database naming conventions for the Centralized Configuration (CC) database.

## Naming Conventions:
-   ### Object Prefixes:
    -   CC: Centralized Configuration
-   ### Object Suffixes:
    -   BRI: Before Row Insert (for triggers)
    -   BRU: Before Row Update (for triggers)
    -   SEQ: Sequence
    -   V: View
-   ### Field Suffixes:
    -   DESC: Description field
    -   ID: Primary/foreign keys (e.g. RESP_ID, RESP_TYPE_ID)
-   ### Abbreviations:
    -   CONFIG: Configuration
    -   HIST: History
    -   MOD: Modified
    -   NUM: Number
    -   OS: Operating System
    -   PK: Primary Key
    -   TRG: Trigger
