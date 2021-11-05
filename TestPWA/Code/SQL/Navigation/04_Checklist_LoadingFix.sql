
;WITH CTE AS 
( 
	SELECT * 
	FROM T_FMS_Navigation 
	WHERE NA_UID IN 
	( 
		 '6E50D12C-9E29-419E-B82F-F1040727485B' 
		,'7097E768-D9C3-48F6-9882-4D3ED4A0652B' 
		,'6DF056B5-24F5-4988-B5B7-462CE8D2E715' 
		,'0134F896-0DFE-4B0C-AA89-C389B555B6BE' 
		,'EA068C1D-EB46-45B1-B3B8-F63F5431384B' 
		,'4E4B83EE-6BB4-410A-A885-7B0EC9AA3A13' 
		,'7E6BBA6C-395B-4BB3-A0C3-0E9106D7AC2D' 
		,'103B2CC6-080D-4665-A09F-1A5E346D6004' 
	) 
	AND NA_NA_UID IS NOT NULL 
) 
-- SELECT * FROM CTE 
UPDATE CTE SET NA_useLoading = 'false' -- NULL 




DECLARE @allChecklists TABLE ( CL_UID uniqueidentifier NOT NULL PRIMARY KEY(CL_UID), CL_Name nvarchar(256) NULL, CL_Title nvarchar(256) NULL, CL_Sort int NULL ); 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'eb159a9c-e69f-49f4-b10e-3a4825973e46', N'Schüttgutcontainer', N'Wartungscheckliste MUVE', 1); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'1f6bee57-38a8-4b29-9986-bfad7d107215', N'EVA', N'Wartungscheckliste MUVE', 2); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'58a6d34c-2d4b-4f8a-b831-60488591aedc', N'CIS', N'Wartungscheckliste MUVE', 3); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'da19d272-9439-47a7-9749-153dafab2b69', N'VHP', N'Wartungscheckliste MUVE', 4); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'698ea23d-485a-4cee-9b06-2e130a3a5626', N'NPL', N'Wartungscheckliste NPL', 5); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'f1a2dd8a-2d11-496e-9b14-13559405089f', N'BPS_M7', N'Wartungscheckliste BPS M7 500 und 1000 Stunden', 6); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'ddada097-1bb4-46d5-9ee5-7bb28dd3201b', N'BPS_1020', N'Wartungscheckliste BPS 1020 500 und 1000 Stunden', 7); 


SELECT 
	 Checklists.CL_UID AS FT_UID 
	,Checklists.CL_Title AS FT_Ch 
	,N'Checkliste ' + Checklists.CL_Name AS FT_De 
	,N'Checklist ' + Checklists.CL_Name AS FT_En 
	,N'Check-list ' + Checklists.CL_Name AS FT_Fr 
	,N'Check-list ' + Checklists.CL_Name AS FT_It 
	,N'Check-list ' + Checklists.CL_Name AS FT_Ru 
	,N'' AS FT_Parameter 
	,1 AS FT_Status 
FROM T_FMS_Translation 
CROSS JOIN (SELECT * FROM @allChecklists) AS Checklists 
WHERE FT_UID = '9A398C85-9364-4FC1-0000-000000000000' 
