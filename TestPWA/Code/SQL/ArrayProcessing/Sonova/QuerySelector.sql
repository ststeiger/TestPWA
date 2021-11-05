
SELECT 
	 KM_UID 
	,KM_Nr
	,KM_Rufnummer
	,KM_DatumVon
	,KM_DatumBis 
	,KM_AP_UID
	,KM_ZN_UID
	,t.SVE_UID 
	,t.SVE_SVG_UID 
	,GB_Nr 
	,GST_Kurz_DE + GS_Nr AS GS 
FROM T_AP_Kommunikation 

LEFT JOIN T_AP_Zone ON ZN_UID = KM_ZN_UID 

OUTER APPLY 
	(
		SELECT TOP 1 * FROM T_VWS_SVGElement
		WHERE (1=1) 
		-- AND T_VWS_SVGElement.SVE_dateCreated <= CURRENT_TIMESTAMP AND (T_VWS_SVGElement.SVE_dateDeleted >= CURRENT_TIMESTAMP OR T_VWS_SVGElement.SVE_dateDeleted IS NULL)
		AND T_VWS_SVGElement.SVE_OBJT_Code = 'KM' 
		AND T_VWS_SVGElement.SVE_OBJ_UID = T_AP_Kommunikation.KM_UID 
		ORDER BY T_VWS_SVGElement.SVE_dateCreated DESC 
	) AS t 

OUTER APPLY 
	(
		SELECT TOP 1 * FROM T_VWS_ZO_SVG_AP_Objekt 
		WHERE (1=1) 
		AND ZO_SVGOBJ_SVG_UID = t.SVE_SVG_UID 
		AND T_VWS_ZO_SVG_AP_Objekt.ZO_SVGOBJ_OBJT_Code = 'GS' 
		ORDER BY ZO_SVGOBJ_dateFrom DESC 
	) AS T_VWS_ZO_SVG_AP_Objekt

LEFT JOIN T_AP_Geschoss ON GS_UID = ZO_SVGOBJ_OBJ_UID
LEFT JOIN T_AP_Ref_Geschosstyp ON GST_UID = GS_GST_UID 
LEFT JOIN T_AP_Gebaeude ON GB_UID = GS_GB_UID 


-- Telefon:
-- <g id="KM" class="">
-- <g data-uid="6ee86700-b4ab-445e-af30-065866f9d355" id="_da503e28-58cd-4c2f-9e3d-00c3c787f8d1" data-sort="0" transform="matrix(0.00653331,0,0,0.00653252,1548.99,784.849)">
-- 6EE86700-B4AB-445E-AF30-065866F9D355
-- document.querySelector('g[data-uid="6ee86700-b4ab-445e-af30-065866f9d355"]')
-- document.querySelectorAll('g[id="KM"] > g[data-uid]')
-- Array.from(document.querySelectorAll('g[id="KM"] > g[data-uid]')).map(x => x.getAttribute("data-uid"))
-- JSON.stringify(Array.from(document.querySelectorAll('g[id="KM"] > g[data-uid]')).map(x => x.getAttribute("data-uid")), null, "  ")


-- Zone: (Zone ist immer path)
-- <g id="ZN" class="Touchable">
-- <path d="M957.1972385740087 782.9685993024337L975.1635959945502 782.8365232582031L975.1635959945502 780.2701814831828L1024.1555238806682 780.4713450998499L1023.4948153288468 869.6669995957527L954.6306132204081 869.7713861129688L954.5739966943119 855.684773222535L957.1972694757245 855.6659030624246L957.2349955542421 838.6922038617113L954.6117416264186 838.6827835348361L954.6306132204081 809.5378350404319L957.3482483320873 809.2359124786649L957.1972385740087 782.9685993024337" data-uid="dbc862e6-7acd-4d2c-8698-da3f47e9ce95" id="_a98c6ec9-c1d4-4e33-af14-3af5ff1096f8" data-sort="0" transform="matrix(1,0,0,1,0,0)"></path>
-- document.querySelector('path[data-uid="dbc862e6-7acd-4d2c-8698-da3f47e9ce95"]');
-- Array.from(document.querySelectorAll('g[id="ZN"] > path[data-uid]')).map(x => x.getAttribute("data-uid"))


--Zone
-- document.querySelector('path[data-uid="106ce0ef-ed8f-406f-8e6f-f80b266dddb3"]')
-- SELECT * FROM T_AP_Kommunikation WHERE KM_UID = '7dd77e91-3e0a-48a3-98b9-882bef7574f1'

-- http://localhost:3830/COR-Basic/Checklist2/index.htm?cl_uid=EB159A9C-E69F-49F4-B10E-3A4825973E46&no_cache=1635509031130
-- http://localhost:3830/COR-Basic/Checklist2/index.htm
-- #EDEDED

-- SELECT * FROM T_AP_Zone WHERE ZN_UID = '31976572-4db8-437d-9d40-8cea97aa2a9c'

-- SELECT * FROM T_AP_Kommunikation WHERE KM_UID = 'f0be1c49-2579-46dd-8516-d7395b932ebb' 



WHERE (1=1) 
AND KM_Status = 1 
AND CURRENT_TIMESTAMP BETWEEN KM_DatumVon AND KM_DatumBis 
AND SVE_UID IS NOT NULL 

-- AND KM_ZN_UID IS NULL 
AND KM_ZN_UID IS NOT NULL 
AND GB_Nr = 'L28' 
AND GST_Kurz_DE = 'EG' AND GS_Nr = '00' 

