echo "Running $1 ..."

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i /scripts/custom/$1.sql