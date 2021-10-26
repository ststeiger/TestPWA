
/*
-- CL_CL_List.sql 
declare @BE_ID int; 
set @BE_ID = 5; 
*/

DECLARE @BE_ID int; 
SET @BE_ID=12435; 


SELECT 
	 CL_UID 
	,CASE BE_Language 
		WHEN 'FR' THEN CL_Lang_FR
		WHEN 'IT' THEN CL_Lang_IT
		WHEN 'EN' THEN CL_Lang_EN 
		ELSE CL_Lang_DE
	 END AS CL_Lang 
	 
	-- ,CL_Lang_DE
	-- ,CL_Lang_FR
	-- ,CL_Lang_IT
	-- ,CL_Lang_EN
	 
	,CL_Status 
	 
	,CASE BE_isCor_Hash
		WHEN SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('MD5', 'IsCorUser' + LOWER(BE_User))), 3, 32) THEN 1 
		ELSE 0 
	END AS BE_IsCOR 
FROM T_CL_Checklist 
INNER JOIN T_Benutzer ON BE_ID = @BE_ID 
WHERE (  (CL_Status IN (0, 1))  ) 

-- AND CL_UID =N'22d9548e-9fb9-41a4-a2d9-823b96a5b4b7' -- Mitarbeiterliste

ORDER BY 
	 CL_Sort 
	,CL_Lang 
; 


select reverse('steiger[at]cor-management.ch')