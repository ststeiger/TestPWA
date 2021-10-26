
SELECT 
       PRO_Name
	  ,PRO_Value
FROM T_Checklist_ZO_ElementProperties 
WHERE PRO_ELE_UID = '9914E66E-A2B4-490D-819E-B07DE7F9391A' 


SELECT *
FROM
(
	SELECT 
		   PRO_Name
		  ,PRO_Value
	FROM T_Checklist_ZO_ElementProperties 
	WHERE PRO_ELE_UID = '9914E66E-A2B4-490D-819E-B07DE7F9391A' 
) AS d
PIVOT 
( 
	MAX(d.PRO_Value) FOR d.PRO_Name IN 
	(
		 [align]
		,[bgcolor]
		,[border]
		,[cellspacing]
		,[class]
		,[colspan]
		,[height]
		,[rowspan]
		,[span]
		,[style]
		,[type]
		,[valign]
		,[width]
	) 
) AS piv 

-- SELECT DISTINCT N',' + QUOTENAME(PRO_Name) AS t FROM T_Checklist_ZO_ElementProperties WHERE PRO_Name IS NOT NULL ORDER BY t  
