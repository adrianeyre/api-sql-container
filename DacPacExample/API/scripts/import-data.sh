#!/bin/bash

echo "----------------------------- START OF IMPORT-DATA SCRIPT -----------------------------"

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P SecureP4ssW0rd -i /scripts/DacPacExampleDatabase.publish.sql

echo "------------------------------ END OF IMPORT-DATA SCRIPT -------------------------------"