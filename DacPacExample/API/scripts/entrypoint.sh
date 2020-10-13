#!/bin/bash
# start mssql server and run script
/opt/mssql/bin/sqlservr & /scripts/import-data.sh && while true; do sleep 1; done