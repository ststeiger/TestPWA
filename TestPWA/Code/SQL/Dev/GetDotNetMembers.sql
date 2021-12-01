

SELECT 
	ORDINAL_POSITION
	,COLUMN_NAME 
	,DATA_TYPE
	 
	,'public ' 
	+ 
	CASE DATA_TYPE 
		WHEN 'uniqueidentifier' THEN 'System.Guid'
		WHEN 'datetime' THEN 'System.DateTime'
		WHEN 'bit'  THEN 'bool' 
		WHEN 'varchar' THEN 'string' 
		WHEN 'nvarchar' THEN 'string' 
		ELSE DATA_TYPE 
	END 
	+ 
	CASE 
		WHEN DATA_TYPE IN ('varchar', 'nvarchar') THEN '' 
		WHEN IS_NULLABLE = 'YES' THEN '?'
		WHEN IS_NULLABLE = 'NO' THEN '' 
	END 
	+ ' '
	+ COLUMN_NAME 
	+ ';' + ISNULL(' // ' + CAST(NULLIF(CHARACTER_MAXIMUM_LENGTH, -1) AS varchar(36)), '') 
	AS DotNetMember  
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'T_AP_Raum'
ORDER BY ORDINAL_POSITION 
