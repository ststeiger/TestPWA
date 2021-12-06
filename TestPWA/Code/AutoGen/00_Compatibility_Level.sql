
-- https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-database-transact-sql-compatibility-level?view=sql-server-ver15#arguments
SELECT
    database_id AS db_id 
	,name AS db_name 
    ,state_desc AS db_status 
    ,create_date AS db_create_date 
     
    ,recovery_model_desc AS db_recovery_model 
    ,SUSER_SNAME(owner_sid) AS db_owner 
    ,compatibility_level AS db_compatibility_level 
    ,collation_name AS db_collation
    ,is_auto_close_on AS db_auto_close 
FROM sys.databases
ORDER BY db_name;


DECLARE @sql national character varying(4000)
SET @sql = N'ALTER DATABASE ' + QUOTENAME(DB_NAME()) + N' SET COMPATIBILITY_LEVEL = ' + 	CASE RIGHT(SUBSTRING(@@VERSION, 1, 25), 4) 
		WHEN '2019' THEN '150' 
		WHEN '2017' THEN '140' 
		WHEN '2016' THEN '130' 
		WHEN '2014' THEN '120' 
		WHEN '2012' THEN '110' 
		WHEN '2008' THEN '100' 
		ELSE 'foo' 
	END + ';' 

SELECT @sql AS sql 
EXECUTE(@sql); 
