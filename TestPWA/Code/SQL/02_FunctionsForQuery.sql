
IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_dtLastSundayInMonth' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_dtLastSundayInMonth( @in_DateTime datetime ) RETURNS datetime AS BEGIN RETURN NULL; END;'); 
END


GO


/*
SET DATEFIRST 3; -- Monday

WITH CTE AS (

	SELECT 1 AS i, CAST('20190101' AS datetime) AS mydate  
	UNION ALL 

	SELECT i+1 AS i, DATEADD(month, 1, CTE.mydate) AS mydate 
	FROM CTE WHERE i < 100 
)

SELECT -666 AS i, dbo.fu_dtLastSundayInMonth('17530101') AS lastSundayInMonth, dbo.fu_dtLastSundayInMonth('17530101') AS Control 

UNION ALL 

SELECT -666 AS i, dbo.fu_dtLastSundayInMonth('99991231') AS lastSundayInMonth, dbo.fu_dtLastSundayInMonth('99991231') AS Control 

UNION ALL 

SELECT 
	 mydate 
	,dbo.fu_dtLastSundayInMonth(mydate) AS lastSundayInMonth 
	,dbo.fu_dtLastSundayInMonth(mydate) AS lastSundayInMonth 
	,DATEADD(day,DATEDIFF(day,'19000107', DATEADD(MONTH, DATEDIFF(MONTH, 0, mydate, 30))/7*7,'19000107') AS Control 
FROM CTE 

*/


-- =====================================================================
-- Author:		  Stefan Steiger
-- Create date:   01.03.2019
-- Last modified: 01.03.2019
-- Description:	  Return Datum von letztem Sonntag im Monat 
--                mit gleichem Jahr und Monat wie @in_DateTime
-- =====================================================================
ALTER FUNCTION [dbo].[fu_dtLastSundayInMonth](@in_DateTime datetime )
	RETURNS datetime
AS
BEGIN
	-- Abrunden des Eingabedatums auf 00:00:00 Uhr
	DECLARE @dtReturnValue AS DateTime	
	-- 26.12.9999	SO
	IF @in_DateTime >= CAST('99991201' AS datetime) 
		RETURN CAST('99991226' AS datetime); 
	
	-- @dtReturnValue is now last day of month 
	SET @dtReturnValue = DATEADD 
		(
			 DAY 
			,-1
			,DATEADD
			(
				 MONTH
				,1
				,CAST(CAST(YEAR(@in_DateTime) AS varchar(4)) + RIGHT('00' + CAST(MONTH(@in_DateTime) AS varchar(2)), 2) + '01' AS datetime) 
			)
		)
	;

	-- SET DATEFIRST 1 -- Monday - Super easy ! 
	-- SET DATEFIRST != 1 - PHUK THIS ! 
	SET @dtReturnValue = DATEADD
						(
							day
							,
							 -
							 (
		
								(
									-- DATEPART(WEEKDAY, @lastDayofMonth) -- with SET DATEFIRST 1 
									DATEPART(WEEKDAY, @dtReturnValue) + @@DATEFIRST - 2 % 7 + 1 
								)
								%7
							)
							, @dtReturnValue
	);

	RETURN @dtReturnValue; 
END


GO



IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_dtIsCEST' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_dtIsCEST( @in_DateTime datetime ) RETURNS bit AS BEGIN RETURN NULL; END;'); 
END


GO 



-- =====================================================================
-- Author:		  Stefan Steiger
-- Create date:   01.03.2019
-- Last modified: 01.03.2019
-- Description:	  Ist @in_DateTime Mitteleuropäische Sommerzeit ? 
-- =====================================================================
-- SELECT dbo.fu_dtIsCEST('2019-03-31T01:00:00'), dbo.fu_dtIsCEST('2019-03-31T04:00:00') 
ALTER FUNCTION [dbo].[fu_dtIsCEST](@in_DateTime datetime )
RETURNS bit 
AS
BEGIN
	DECLARE @dtReturnValue AS bit 	
	
	-- https://www.linker.ch/eigenlink/sommerzeit_winterzeit.htm

	-- Umstellung von Winterzeit auf Sommerzeit (Ende März):  
	-- Am letzten Sonntagmorgen im März werden die Uhren von 02:00 auf 03:00 Uhr vorgestellt. 
	-- Man verliert eine Stunde. 

	-- Umstellung von Sommerzeit auf Winterzeit (Ende Oktober): 
	-- Am letzten Sonntagmorgen im Oktober werden die Uhren von 03:00 auf 02:00 Uhr zurückgestellt. 
	-- Man gewinnt eine Stunde.

	DECLARE @beginSummerTime datetime 
	SET @beginSummerTime = dbo.fu_dtLastSundayInMonth(DATEADD(MONTH, 2, DATEADD(YEAR, YEAR(@in_DateTime)-1900, 0)) )  
	SET @beginSummerTime = DATEADD(HOUR, 2, @beginSummerTime) 

	DECLARE @beginWinterTime datetime 
	SET @beginWinterTime = dbo.fu_dtLastSundayInMonth(DATEADD(MONTH, 9, DATEADD(YEAR, YEAR(@in_DateTime)-1900, 0)) )   
	SET @beginWinterTime = DATEADD(HOUR, 2, @beginWinterTime) 

	SET @dtReturnValue = 0; 
	IF @in_DateTime >= @beginSummerTime AND @in_DateTime < @beginWinterTime 
	BEGIN 
		SET @dtReturnValue = 1;
	END 
	
	RETURN @dtReturnValue;
END


GO



IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_dtToEcmaTimeStamp' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_dtToEcmaTimeStamp(@in_DateTime datetime, @in_convert_to_utc bit) RETURNS bigint AS BEGIN RETURN NULL; END;'); 
END


GO 



-- =====================================================================
-- Author:		  Stefan Steiger
-- Create date:   01.03.2019
-- Last modified: 01.03.2019
-- Description:	  Ist @in_DateTime Mitteleuropäische Sommerzeit ? 
-- =====================================================================
-- SELECT dbo.fu_dtToEcmaTimeStamp('2019-03-31T01:00:00', 1), dbo.fu_dtToEcmaTimeStamp('2019-03-31T04:00:00', 1) 
ALTER FUNCTION [dbo].[fu_dtToEcmaTimeStamp](@in_DateTime datetime, @in_convert_to_utc bit)
RETURNS bigint 
AS
BEGIN
	DECLARE @dtReturnValue AS bigint  	
	
	IF @in_convert_to_utc = 1 
	BEGIN
		SET @in_DateTime = 
		CASE WHEN dbo.fu_dtIsCEST(@in_DateTime) = 1 
			THEN DATEADD(HOUR, -2, @in_DateTime) 
			ELSE DATEADD(HOUR, -1, @in_DateTime) 
		END;
	END 
	
	SET @dtReturnValue = 
		CAST
		(
			DATEDIFF
			(
				HOUR
				,CAST('19700101' AS datetime)
				,@in_DateTime 
			)
			AS bigint
		) *60*60*1000
		+ 
		DATEDIFF
		(
			 MILLISECOND 
			,CAST(FLOOR(CAST(@in_DateTime AS float)) AS datetime) 
			,@in_DateTime 
		) % (60*60*1000)
	;

	RETURN @dtReturnValue;
END


GO



IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_dtFromEcmaTimeStamp' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_dtFromEcmaTimeStamp(@in_timestamp bigint, @in_convert_to_localtime bit) RETURNS datetime AS BEGIN RETURN NULL; END;'); 
END


GO 



-- =====================================================================
-- Author:		  Stefan Steiger
-- Create date:   01.03.2019
-- Last modified: 01.03.2019
-- Description:	  Ist @in_DateTime Mitteleuropäische Sommerzeit ? 
-- =====================================================================
-- SELECT dbo.fu_dtFromEcmaTimeStamp('1551437088122', 1), dbo.fu_dtFromEcmaTimeStamp('1554069600000', 1) 
ALTER FUNCTION [dbo].[fu_dtFromEcmaTimeStamp](@in_timestamp bigint, @in_convert_to_localtime bit)
RETURNS datetime 
AS
BEGIN
	DECLARE @dtReturnValue AS datetime   	
	DECLARE @hours int 
	SET @hours = @in_timestamp /(1000*60*60);

	DECLARE @milliseconds int 
	SET @milliseconds = @in_timestamp - (@in_timestamp /(1000*60*60))*(1000*60*60);

	
	SET @dtReturnValue = DATEADD 
						(
							MILLISECOND, @milliseconds, 
							DATEADD(hour, @hours, CAST('19700101' AS datetime)) 
						) 


	IF @in_convert_to_localtime = 1 
	BEGIN
		SET @dtReturnValue = DATEADD(HOUR, 1, @dtReturnValue) 
		SET @dtReturnValue = 
								CASE WHEN dbo.fu_dtIsCEST(@dtReturnValue) = 1 
									THEN DATEADD(HOUR, 1, @dtReturnValue) 
									ELSE @dtReturnValue 
								END;
	END 
	
	RETURN @dtReturnValue;
END


GO



IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_Basic_PropertiesToKeyValuePair' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_Basic_PropertiesToKeyValuePair(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO 




ALTER FUNCTION dbo.fu_Basic_PropertiesToKeyValuePair(@__inputUUID uniqueidentifier)
	RETURNS national character varying(MAX)
AS
BEGIN 
	DECLARE @property_name national character varying(1000);
	DECLARE @property_value national character varying(1000);
	DECLARE @json national character varying(MAX);
	DECLARE @i int; 


	DECLARE json_cursor CURSOR FOR 
	(
		SELECT 
			 PRO_Name 
			,PRO_Value 
		FROM T_Checklist_ZO_ElementProperties 
		WHERE PRO_ELE_UID = @__inputUUID 
	)

	OPEN json_cursor  

	SET @json = N'{ '; 
	SET @i = 0; 
	FETCH NEXT FROM json_cursor INTO @property_name, @property_value 
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		IF @i <> 0
		BEGIN
			SET @json = @json + N', '; 
		END 
		ELSE 
		BEGIN
			SET @json = @json + N' '; 
		END 
	
		SET @json = @json + N'"' + STRING_ESCAPE(@property_name, N'JSON') + N'" : "' + STRING_ESCAPE(@property_value, N'JSON') + N'"'; -- + NCHAR(13) + NCHAR(10); 

		SET @i = @i + 1; 
		FETCH NEXT FROM json_cursor INTO @property_name, @property_value; 
	END 

	CLOSE json_cursor; 
	DEALLOCATE json_cursor; 

	SET @json = @json + N' }'; 

	RETURN @json; 
END


GO 





IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_Basic_MapGuidAttribute' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_Basic_MapGuidAttribute(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO 




-- id's value must not contain whitespace (spaces, tabs etc.). 
-- Using characters except ASCII letters, digits, '_', '-' and '.' may cause compatibility problems
-- an ID should start with a letter for compatibility
-- DECLARE @__prefix national character varying(100) = N'aaa'; 
-- DECLARE @__uuid uniqueidentifier = @__prefix + REPLACE(CAST(NEWID() AS nvarchar(36)), N'-', N''); 
-- SELECT dbo.fu_Basic_MapGuidAttribute(@__uuid, @__prefix) AS mapped 
ALTER FUNCTION dbo.fu_Basic_MapGuidAttribute(@__inputUUID nvarchar(1000), @__prefix nvarchar(1000))
	RETURNS national character varying(36)
AS
BEGIN 
    RETURN UPPER
		(
					 SUBSTRING(@__inputUUID, COALESCE(LEN(@__prefix), 0) + 1,8) 
			+ N'-' + SUBSTRING(@__inputUUID, COALESCE(LEN(@__prefix), 0) + 9, 4) 
			+ N'-' + SUBSTRING(@__inputUUID, COALESCE(LEN(@__prefix), 0) + 13, 4) 
			+ N'-' + SUBSTRING(@__inputUUID, COALESCE(LEN(@__prefix), 0) + 17, 4) 
			+ N'-' + SUBSTRING(@__inputUUID, COALESCE(LEN(@__prefix), 0) + 21, 12) 
		);
END


GO 


IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_Basic_LTRIM' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_Basic_LTRIM(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO 


ALTER FUNCTION dbo.fu_Basic_LTRIM(@Input nvarchar(MAX))
	RETURNS national character varying(MAX)
AS
BEGIN
    DECLARE @Output national character varying(MAX); 
    DECLARE @Whitespace national character varying(20); 
    DECLARE @Pos int; 

    SET @Whitespace = NCHAR(0) + NCHAR(9) + NCHAR(10) + NCHAR(13) + NCHAR(32); 
    SET @Pos = 1; 

    WHILE CHARINDEX(SUBSTRING(@Input, @Pos, 1), @Whitespace) > 0
    BEGIN
        SET @Pos = @Pos + 1; 
    END

    SET @Output = RIGHT(@Input, LEN(@Input) - @Pos + 1);  
    RETURN @Output; 
END


GO 



IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'fu_Basic_RTRIM' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.fu_Basic_RTRIM(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO


ALTER FUNCTION dbo.fu_Basic_RTRIM(@Input national character varying(MAX))
	RETURNS national character varying(MAX)
AS
BEGIN
    DECLARE @Output national character varying(MAX); 
    DECLARE @Whitespace national character varying(20); 
    DECLARE @Pos int; 

    SET @Whitespace = NCHAR(0) + NCHAR(9) + NCHAR(10) + NCHAR(13) + NCHAR(32); 
    SET @Pos = LEN(@Input); 

    WHILE CHARINDEX(SUBSTRING(@Input, @Pos, 1), @Whitespace) > 0
    BEGIN
        SET @Pos = @Pos - 1; 
    END

    SET @Output = LEFT(@Input, @Pos); 
    RETURN @Output; 
END


GO 

