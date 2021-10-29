
SELECT 
	 CL_UID 
	,N'<a href="' 
	+ N'Checklist2/index.htm' 
	+ N'?cl_uid=' + CAST(CL_UID AS nvarchar(36)) 
	+ N'&no_cache=' + CAST(dbo.fu_dtToEcmaTimeStamp(CURRENT_TIMESTAMP, 1) AS nvarchar(36)) 
	+ N'"' 
	+ N' target="_blank"' 
	+ N'>' 
	+ CL_Name 
	+ N'</a><br />'
	AS link 

	,'http://localhost:3830/COR-Basic/Checklist2/index.htm'
	+ N'?cl_uid=' + CAST(CL_UID AS nvarchar(36)) 
	+ N'&no_cache=' + CAST(dbo.fu_dtToEcmaTimeStamp(CURRENT_TIMESTAMP, 1) AS nvarchar(36)) 
	AS debugLink 

	,CL_Name 
	,CL_Title 
	,CASE CL_Name 
		WHEN 'Schüttgutcontainer' THEN 1
		WHEN 'EVA' THEN 2
		WHEN 'CIS' THEN 3
		WHEN 'VHP' THEN 4
		WHEN 'NPL' THEN 5
		WHEN 'BPS_M7' THEN 6
		WHEN 'BPS_1020' THEN 7
	END AS CL_Sort 
FROM T_Checklist 
ORDER BY CL_Sort 
