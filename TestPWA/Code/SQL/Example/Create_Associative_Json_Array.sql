
SELECT 
	 ELE_UID
	,ELE_Parent_UID
	,ELE_CL_UID
	,ELE_TagName
	--,ELE_Level
	--,ELE_Sort
	--,ELE_RecSort
	--,ELE_InnerHtml
	,dbo.PropertiesToKeyValuePair(ELE_UID) AS properties
FROM T_ChecklistElements
FOR JSON PATH 
