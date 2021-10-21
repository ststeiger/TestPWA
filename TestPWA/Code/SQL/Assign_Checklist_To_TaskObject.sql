
/*
-- SQL03,1835
-- COR_Basic_Demo_V4
*/

	--CL_ZO_CL_List.sql
	declare @BE_ID int; set @BE_ID = 22;
	declare @Reference uniqueidentifier; set @Reference = '54F93DE4-7DBB-4E7D-8A14-B3B3261DFC27';

	--[CL_Lang];',N'@___ResourceName nvarchar(17)
	--,@BE_ID int,@MDT_ID int,@Type nvarchar(6)
	--,@Cache nvarchar(13),@Reference nvarchar(36)
	--,@CL_Lang nvarchar(4000)
	
	-- @___ResourceName=N'CL_ZO_CL_List.sql'
	SET @BE_ID=12435
	-- ,@MDT_ID=0,@Type=N'normal',@Cache=N'1634826883704'
	SET @Reference=N'593cc1c3-6ddc-488d-996c-532bd0e8cb44'
	-- SET @CL_Lang=N''


select 
	[CL_UID],
	
	case [BE_Language]
		when 'EN' then [CL_Lang_EN]
		when 'FR' then [CL_Lang_FR]
		when 'IT' then [CL_Lang_IT]
		else [CL_Lang_DE]
	end as [CL_Lang]
	
from [T_CL_Checklist]
	inner join [T_ZO_CL_Checklist] on [ZO_CL_CL_UID] = [CL_UID] and [ZO_CL_Status] = 1
	inner join [T_Benutzer] on [BE_ID] = @BE_ID
	
where
	(
		([CL_Status] = 1) and
		
		(
			[ZO_CL_OBJ_UID] = @Reference
		)
	)
order by
	[CL_Sort],
	[CL_Lang]

-- SELECT * FROM T_ZO_CL_Checklist 
-- SELECT * FROM T_TM_Tasks WHERE TSK_UID = @Reference 
-- SELECT * FROM T_COR_Objekte WHERE OBJ_UID = @Reference 





INSERT INTO T_ZO_CL_Checklist
(
	 ZO_CL_UID 
	,ZO_CL_CL_UID 
	,ZO_CL_MDT_ID 
	,ZO_CL_Status 
	,ZO_CL_OBJ_UID 
) 
SELECT 
	 NEWID() AS ZO_CL_UID -- uniqueidentifier NOT NULL,
	,t.CL_UID AS ZO_CL_CL_UID -- uniqueidentifier NOT NULL,
	,0 AS ZO_CL_MDT_ID -- int NOT NULL,
	,1 AS ZO_CL_Status -- int NOT NULL,
	,'593cc1c3-6ddc-488d-996c-532bd0e8cb44' AS ZO_CL_OBJ_UID -- uniqueidentifier NULL 
FROM 
(
	SELECT TOP 1 CL_UID
	FROM T_CL_Checklist 
	WHERE CL_MDT_ID = 0 
	AND CL_Status = 1 
	ORDER BY CL_Lang_DE 
) AS t 
