@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET IMPORTFILE=""

sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -d TestPizzaImport -Q "EXEC SetupPizzaInformationStore"
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -i .\PizzaMakerFileFlattenRawTextFileLoad.sql
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -d TestPizzaImport -Q "EXEC CUSTOMERLOAD"
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -d TestPizzaImport -Q "EXEC MENULOAD"
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -d TestPizzaImport -Q "EXEC ORDERSLOAD"
sqlcmd -Snp:\\.\pipe\MSSQL$SQLEXPRESS\sql\query -d TestPizzaImport -Q "EXEC ORDEREDITEMSLOAD"
