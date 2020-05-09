@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET IMPORTFILE=""

sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\PizzaMakerFileFlattenSetup.sql
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\PizzaMakerFileFlattenRawTextFileLoad.sql
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\CUSTOMERLOADTEST.sql
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\MENULOADTEST.sql
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\ORDERSLOADTEST.sql
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\ORDEREDITEMSLOADTEST.sql