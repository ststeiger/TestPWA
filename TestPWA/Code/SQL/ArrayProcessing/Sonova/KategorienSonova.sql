

SELECT KM_KMKAT_UID, T_AP_Ref_KommunikationKategorie.KMKAT_Lang_DE, COUNT(*) AS cnt  
FROM T_AP_Kommunikation 
LEFT JOIN T_AP_Ref_KommunikationKategorie ON T_AP_Ref_KommunikationKategorie.KMKAT_UID = KM_KMKAT_UID 
WHERE (1=1) 
AND CURRENT_TIMESTAMP BETWEEN KM_DatumVon AND KM_DatumBis 
AND KM_Status = 1 
GROUP BY KM_KMKAT_UID, T_AP_Ref_KommunikationKategorie.KMKAT_Lang_DE
ORDER BY KMKAT_Lang_DE, cnt DESC 



-- Feste Sation6021n
SELECT 
	 KMKAT_UID 
	,KMKAT_Lang_DE 
FROM T_AP_Ref_KommunikationKategorie 
WHERE KMKAT_Status = 1 
AND KMKAT_UID IN (
SELECT KM_KMKAT_UID 
FROM T_AP_Kommunikation 
LEFT JOIN T_AP_Ref_KommunikationKategorie ON T_AP_Ref_KommunikationKategorie.KMKAT_UID = KM_KMKAT_UID 
WHERE (1=1) 
AND CURRENT_TIMESTAMP BETWEEN KM_DatumVon AND KM_DatumBis 
AND KM_Status = 1 
GROUP BY KM_KMKAT_UID
)

ORDER BY KMKAT_Lang_DE
