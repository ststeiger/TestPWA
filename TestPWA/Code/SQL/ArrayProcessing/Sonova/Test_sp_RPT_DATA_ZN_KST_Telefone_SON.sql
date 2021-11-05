
DECLARE @in_mandant nvarchar(1),@in_stichtag nvarchar(10),@in_standort nvarchar(36),@in_gebaeude nvarchar(36),@in_geschoss nvarchar(36)
,@in_kst_leiter nvarchar(326),@in_kst nvarchar(38)

SET @in_mandant=N'0' 
SET @in_stichtag=N'02.11.2021'
SET @in_standort=N'0083c6dd-b53a-40f3-b2f9-c20dda6e118a' 
SET @in_gebaeude=N'5f495ebf-cc51-477e-a03c-919f7df30c0a' 
SET @in_geschoss=N'57dd8f27-e744-42b1-9150-ba3291ba11c3' 
SET @in_kst_leiter=N',Andi Vonlanthen,Carhart,Catherine Bennetto,Claude Diversi,Dieter Von Hassel,Fowler,Hanspeter Attinger,Jon Billings,Magdalena Baggenstos,Marco Caron,Martina Giron,Mauro Massetti,Michael Mathey,Newton,Nicolas Junod,Patrick Hofer,Patrick Perler,Peter Rother,Rico Vannotti,Sonja Da Dalto,Stefan Joly,Uta Kollenberg,Visitorcenter,'
SET @in_kst=N',DC9722F7-D3E5-41AA-9BD8-991346B59749,'


EXECUTE sp_RPT_DATA_ZN_KST_Telefone_SON
	 @in_mandant
	,@in_stichtag 
	,@in_standort
	,@in_gebaeude
	,@in_geschoss
	,@in_kst_leiter
	,@in_kst
;
