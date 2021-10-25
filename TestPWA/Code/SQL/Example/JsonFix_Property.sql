
SELECT 
	 ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName --, ELE_InnerHtml 
	,REVERSE(
SUBSTRING(
REVERSE(
N'[[' + 
SUBSTRING(
REPLACE(REPLACE(
(
	SELECT 
		PRO_Name, PRO_Value 
	FROM T_Checklist_ZO_ElementProperties 
	WHERE T_Checklist_ZO_ElementProperties.PRO_ELE_UID = T_ChecklistElements.ELE_UID 
	FOR JSON PATH -- , WITHOUT_ARRAY_WRAPPER 
)
, N'"},{"PRO_Name":"', N'"],["')
, N'","PRO_Value":"', N'","')
,14, 2147483647))
,3, 2147483647)) + N']]'
AS properties 
FROM T_ChecklistElements -- WHERE ELE_CL_UID = @__cl_uid
-- WHERE ELE_UID = '3C4556A6-5DFA-4085-9051-075FF6670EAE' 
FOR JSON PATH 
