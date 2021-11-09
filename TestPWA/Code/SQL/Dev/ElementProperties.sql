
/*
; WITH CTE AS 
(
	SELECT 
		 PRO_UID 
		,PRO_Name 
		,PRO_Value 
		,REPLACE
		(
			 REPLACE(PRO_Value , N'height: 4cm;', N'max-height: 4cm;') 
			,N'height: 4.5cm;', N'max-height: 4.5cm;' 
		) 
		AS newValue 
		,PRO_ELE_UID 
	FROM T_Checklist_ZO_ElementProperties 
	WHERE PRO_Name = 'style' 
	AND PRO_Value LIKE '%height:%' 
	AND NOT PRO_Value LIKE '%max-height:%' 
) 
-- SELECT * FROM CTE 
UPDATE CTE SET PRO_Value = newValue 
; 
*/


-- SELECT * FROM T_Checklist_ZO_ElementProperties WHERE PRO_Name NOT IN ('class', 'type',  'width', 'height', 'colspan', 'rowspan', 'span', 'border', 'cellspacing', 'align', 'valign', 'bgcolor') ORDER BY PRO_Name, PRO_Value 

-- SELECT * FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID = '7af8dd63-0bdf-43c3-b1a2-e5560aa86550'



-- SELECT * FROM T_Checklist_ZO_ElementValues; 
-- SELECT * FROM T_Checklist_ZO_SaveDates; 
SELECT * FROM T_Checklist_ZO_ElementProperties WHERE PRO_Name IS NULL OR PRO_Value IS NULL; 



-- DELETE FROM T_Checklist_ZO_ElementValues; 
-- DELETE FROM T_Checklist_ZO_SaveDates; 
DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_Name IS NULL OR PRO_Value IS NULL; 


/*

Amount: 84 cubic meters (m3) of gold volume
Equals: 1,619,688.00 kilograms (kg - kilo) in gold mass
1.5 Mio. kg a 55'000/kg = 80'343'000'000

The room was 22 feet long by 17 feet wide (6.7 meters by 5.17 meters) 
and the Emperor offered to fill it to a height of about 8 feet (2.45m).



<div style="background-image: url(&quot;cgi-bin/GenerateImage.ashx?no_cache=1636365998076&amp;bgcolor=%233D3D3D&amp;rotate=true&amp;text=COR_ObjektRechte_Schreiben&quot;);"></div>


https://cordemo.cor-asp.ch/COR_Basic_Demo_V4/cgi-bin/GenerateImage.ashx?no_cache=1636308667021&bgcolor=%23FFF&rotate=true&text=COR_ObjektRechte%0D%0ASchreiben
https://cordemo.cor-asp.ch/FM_COR_Demo_V4/w8/index.html




https://localhost:44314/
https://localhost:44314/GenerateImage2
https://localhost:44314/cgi-bin/GenerateImage2.ashx?no_cache=1636308667021&bgcolor=%23FFF&rotate=true&text=COR_ObjektRechte%0D%0ASchreiben
https://localhost:44314/cgi-bin/GenerateImage.ashx?no_cache=1636308667021&bgcolor=%23FFF&rotate=true&text=COR_ObjektRechte%0D%0ASchreiben

*/