
DECLARE @in_mandant varchar(3) 
	,@in_stichtag datetime 
	,@in_standort varchar(36) 
	,@in_gebaeude varchar(36) 
	,@in_geschoss varchar(36) 
	,@in_kst_leiter varchar(MAX) 
	,@in_kst varchar(MAX) 


SET @in_mandant=N'0' 
SET @in_stichtag=N'02.11.2021'
SET @in_standort=N'0083c6dd-b53a-40f3-b2f9-c20dda6e118a' 
SET @in_gebaeude=N'5f495ebf-cc51-477e-a03c-919f7df30c0a' 
SET @in_geschoss=N'57dd8f27-e744-42b1-9150-ba3291ba11c3' 
SET @in_kst_leiter=N',Andi Vonlanthen,Carhart,Catherine Bennetto,Claude Diversi,Dieter Von Hassel,Fowler,Hanspeter Attinger,Jon Billings,Magdalena Baggenstos,Marco Caron,Martina Giron,Mauro Massetti,Michael Mathey,Newton,Nicolas Junod,Patrick Hofer,Patrick Perler,Peter Rother,Rico Vannotti,Sonja Da Dalto,Stefan Joly,Uta Kollenberg,Visitorcenter,'
SET @in_kst=N',DC9722F7-D3E5-41AA-9BD8-991346B59749,'

	
SELECT
	 T_AP_Gebaeude.GB_UID AS RPT_GB_UID
	,T_AP_Gebaeude.GB_Nr AS RPT_GB_Nr 
	,T_AP_Ref_Geschosstyp.GST_Kurz_DE + GS_Nr AS RPT_Geschoss
	
	 
	 
	,T_AP_Ref_Kostenstelle.KST_UID AS RPT_KST_UID
	,T_AP_Ref_Kostenstelle.KST_Code AS RPT_KST_Nr
	,T_AP_Ref_Kostenstelle.KST_Lang_DE AS RPT_KST_Bezeichnung

	,T_AP_Zone.ZN_UID AS RPT_ZN_UID
	,T_AP_Zone.ZN_Bezeichnung AS RPT_ZN_KST_Leiter
	
	/*
	,CASE
		WHEN SUM(COALESCE(T_VWS_SVGElement.SVE_areaInSquaremeters, ROUND(T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_Flaeche, 2)) ) = 0
			THEN 0
			ELSE 
			ISNULL(
				ROUND(SUM(COALESCE(T_VWS_SVGElement.SVE_areaInSquaremeters, ROUND(T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_Flaeche, 2)) ) / NULLIF(COUNT(T_AP_Kommunikation.KM_UID),0), 2) 
				,SUM(COALESCE(T_VWS_SVGElement.SVE_areaInSquaremeters, ROUND(T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_Flaeche, 2)))
			)
	END AS RPT_ZN_Flaeche 
	
	,COUNT(T_AP_Kommunikation.KM_UID) AS RTP_KM_Count
	*/

	
	


	
	-- ,T_AP_Standort.SO_DatumVon
	-- ,T_AP_Gebaeude.GB_DatumVon
	-- ,T_AP_Geschoss.GS_DatumVon

	--,T_AP_Standort.SO_DatumBis
	--,T_AP_Gebaeude.GB_DatumBis
	--,T_AP_Geschoss.GS_DatumBis

	--,T_AP_Zone.ZN_DatumVon
	--,T_AP_Zone.ZN_DatumBis
	--,T_AP_Zone.ZN_Status 

	--,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumVon
	--,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumBis
	--,T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_Status 

	-- ,T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_DatumVon 
	-- ,T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_DatumBis 
	-- ,T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_Status 

	,T_AP_Kommunikation.KM_UID 
	,CASE WHEN SVE_dateDeleted IS NOT NULL THEN 1 ELSE 0 END AS IsDatenschrott 

	--,ROW_NUMBER() OVER (PARTITION BY KM_UID ORDER BY KM_UID) AS rn 


	,T_AP_Kommunikation.KM_DatumVon 
	,T_AP_Kommunikation.KM_DatumBis 
	,T_AP_Kommunikation.KM_Status 

	,T_VWS_SVGElement.SVE_UID 
	,T_VWS_SVGElement.SVE_dateCreated 
	,T_VWS_SVGElement.SVE_dateDeleted 

	,T_VWS_SVGElement.SVE_OBJ_UID
	,T_VWS_SVGElement.SVE_OBJT_Code 

	,T_VWS_SVGElement.SVE_Content 

	-- ,T_AP_Ref_KommunikationKategorie.* 
	,SVG_UID 
FROM T_AP_Zone 

INNER JOIN T_ZO_AP_Zone_AP_Ref_Kostenstelle
	ON T_AP_Zone.ZN_UID = T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_ZN_UID
	AND T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumVon AS float)) AND CAST(T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_DatumBis AS float)
	
INNER JOIN T_AP_Ref_Kostenstelle
	ON T_ZO_AP_Zone_AP_Ref_Kostenstelle.ZO_ZNKST_KST_UID = T_AP_Ref_Kostenstelle.KST_UID
	AND T_AP_Ref_Kostenstelle.KST_Status = 1

INNER JOIN T_AP_Geschoss
	ON T_AP_Zone.ZN_GS_UID = T_AP_Geschoss.GS_UID
	AND T_AP_Geschoss.GS_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Geschoss.GS_DatumVon AS float)) AND CAST(T_AP_Geschoss.GS_DatumBis AS float)
	
INNER JOIN T_AP_Gebaeude
	ON T_AP_Geschoss.GS_GB_UID = T_AP_Gebaeude.GB_UID
	AND T_AP_Gebaeude.GB_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Gebaeude.GB_DatumVon AS float)) AND CAST(T_AP_Gebaeude.GB_DatumBis AS float)

INNER JOIN T_AP_Standort
	ON T_AP_Gebaeude.GB_SO_UID = T_AP_Standort.SO_UID
	AND T_AP_Standort.SO_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Standort.SO_DatumVon AS float)) AND CAST(T_AP_Standort.SO_DatumBis AS float)
	
INNER JOIN T_AP_Ref_Geschosstyp
	ON T_AP_Geschoss.GS_GST_UID = T_AP_Ref_Geschosstyp.GST_UID

LEFT JOIN T_ZO_AP_Zone_Flaeche
	ON T_AP_Zone.ZN_UID = T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_ZN_UID
	AND T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_Status = 1
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_DatumVon AS float)) AND CAST(T_ZO_AP_Zone_Flaeche.ZO_ZNFlaeche_DatumBis AS float)
	
LEFT JOIN T_AP_Kommunikation
	ON T_AP_Zone.ZN_UID = T_AP_Kommunikation.KM_ZN_UID
	AND T_AP_Kommunikation.KM_Status = 1 
	AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Kommunikation.KM_DatumVon AS float)) AND CAST(T_AP_Kommunikation.KM_DatumBis AS float)
	
LEFT JOIN T_AP_Ref_KommunikationKategorie 
	ON T_AP_Ref_KommunikationKategorie.KMKAT_UID = T_AP_Kommunikation.KM_KMKAT_UID 
	/*
LEFT JOIN T_VWS_SVGElement 
INNER JOIN T_VWS_SVG 
	ON SVG_UID = SVE_SVG_UID 
	AND SVG_VAR_UID IS NULL 
	-- Auskommentiert: Keine SVG-Elemente von Varianten 
	-- INNER JOIN T_VWS_SVG -- nur inner join von Element auf SVG, left join auf alles
	-- 	ON T_VWS_SVG.SVG_UID = T_VWS_SVGElement.SVE_SVG_UID 
	-- 	AND T_VWS_SVG.SVG_VAR_UID IS NULL -- Sicherstellen, dass nicht Daten von Variante 
		-- SVG-Element zu gewähltem Zeitpunkt 
		ON T_VWS_SVGElement.SVE_OBJ_UID = T_AP_Zone.ZN_UID 
		AND T_VWS_SVGElement.SVE_OBJT_Code = 'ZN' 
		AND T_VWS_SVGElement.SVE_dateCreated <= @in_stichtag 
		AND 
		(
			T_VWS_SVGElement.SVE_dateDeleted > @in_stichtag 
			OR 
			T_VWS_SVGElement.SVE_dateDeleted IS NULL
		)
	*/

OUTER APPLY (
SELECT TOP 1 * FROM T_VWS_SVGElement 
INNER JOIN T_VWS_SVG 
	ON SVG_UID = SVE_SVG_UID 
	AND SVG_VAR_UID IS NULL 
	-- Auskommentiert: Keine SVG-Elemente von Varianten 
	-- INNER JOIN T_VWS_SVG -- nur inner join von Element auf SVG, left join auf alles
	-- 	ON T_VWS_SVG.SVG_UID = T_VWS_SVGElement.SVE_SVG_UID 
	-- 	AND T_VWS_SVG.SVG_VAR_UID IS NULL -- Sicherstellen, dass nicht Daten von Variante 
		-- SVG-Element zu gewähltem Zeitpunkt 
		WHERE T_VWS_SVGElement.SVE_OBJ_UID = T_AP_Kommunikation.KM_UID 
		AND T_VWS_SVGElement.SVE_OBJT_Code = 'KM' 
		AND T_VWS_SVGElement.SVE_dateCreated <= @in_stichtag 
		
		ORDER BY SVE_dateCreated DESC 
		--AND 
		--(
		--	T_VWS_SVGElement.SVE_dateDeleted > @in_stichtag 
		--	OR 
		--	T_VWS_SVGElement.SVE_dateDeleted IS NULL
		--)
		) AS T_VWS_SVGElement

WHERE (1=1) 
AND T_AP_Zone.ZN_Status = 1 
AND FLOOR(CAST(@in_stichtag AS float)) BETWEEN FLOOR(CAST(T_AP_Zone.ZN_DatumVon AS float)) AND CAST(T_AP_Zone.ZN_DatumBis AS float)
-- AND SVE_dateDeleted IS NULL -- 23 
-- AND SVE_dateDeleted IS NOT NULL -- 14 

-- AND SVE_UID IS NULL 
/*
AND KM_UID IN 
(
	 '12C4824F-8F37-44E4-B41F-73A4A9753C88'
	,'7CC8EAB0-A7CE-4CAB-8DAD-456E2CF52D46'
	,'EF7703F5-8111-4F93-B4B3-75577E3FA002'
	,'F8CFD25B-43A3-4907-8E43-C4CCE6957041'
	,'25366572-4870-4A2F-AE10-EA8A52CD3769'
	,'D854124E-944F-4DE8-8F3F-F9C6D63C80F0'
	,'E4C63583-E1F4-4970-8CDE-2BB1B051BF9B'
	,'321AD660-DF3C-4793-826C-819EFAF1EE54'
	,'382A1AD4-1BCE-4B74-A632-87D85A7B3253'
	,'0886294A-FC44-4844-9C7E-8D1DA2285366'
	,'1352F13A-5007-4C98-8AEE-BEE450FC520C'
	,'FA40E8BD-0A8B-4781-A14B-C4088BF43FCE'
	,'868B2C84-3FFA-4D63-B2DA-EBE743DA2B5B'
	,'7F452388-2804-4F14-8C89-2524FA561B9E'
)
*/

AND 
( 
	@in_standort = '00000000-0000-0000-0000-000000000000' 
	OR 
	@in_standort = T_AP_Standort.SO_UID 
) 

AND 
( 
	@in_gebaeude = '00000000-0000-0000-0000-000000000000' 
	OR 
	@in_gebaeude = T_AP_Gebaeude.GB_UID 
) 

AND 
( 
	@in_geschoss = '00000000-0000-0000-0000-000000000000' 
	OR 
	@in_geschoss = T_AP_Geschoss.GS_UID 
) 


		

AND ',' + @in_kst + ',' LIKE ('%,' + CAST(KST_UID AS varchar(36)) + ',%')

-- AND KMKAT_Lang_DE = 'Telefon' -- 28 
-- AND KMKAT_Lang_DE = 'SoftClient' -- 5


-- SELECT * FROM T_AP_Ref_KommunikationKategorie 


-- SELECT SVE_UID, SVE_dateCreated, SVE_dateDeleted, SVE_BEDeleted, SVE_OBJ_UID, SVE_OBJT_Code
-- FROM T_VWS_SVGElement WHERE SVE_OBJ_UID = '7F452388-2804-4F14-8C89-2524FA561B9E' AND SVE_OBJT_Code = 'KM' 
-- ORDER BY SVE_dateCreated DESC 
