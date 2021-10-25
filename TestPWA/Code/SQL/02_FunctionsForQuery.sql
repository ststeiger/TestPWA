
IF NOT EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.ROUTINES 
	WHERE SPECIFIC_SCHEMA = 'dbo' 
	AND SPECIFIC_NAME = 'PropertiesToKeyValuePair' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.PropertiesToKeyValuePair(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO 




ALTER FUNCTION dbo.PropertiesToKeyValuePair(@__inputUUID uniqueidentifier)
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
	AND SPECIFIC_NAME = 'MapGuidAttribute' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.MapGuidAttribute(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO 




-- id's value must not contain whitespace (spaces, tabs etc.). 
-- Using characters except ASCII letters, digits, '_', '-' and '.' may cause compatibility problems
-- an ID should start with a letter for compatibility
-- DECLARE @__prefix national character varying(100) = N'aaa'; 
-- DECLARE @__uuid uniqueidentifier = @__prefix + REPLACE(CAST(NEWID() AS nvarchar(36)), N'-', N''); 
-- SELECT dbo.MapGuidAttribute(@__uuid, @__prefix) AS mapped 
ALTER FUNCTION dbo.MapGuidAttribute(@__inputUUID nvarchar(1000), @__prefix nvarchar(1000))
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
	AND SPECIFIC_NAME = 'LTrimWhitespace' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.LTrimWhitespace(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO 


ALTER FUNCTION dbo.LTrimWhitespace(@Input nvarchar(MAX))
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
	AND SPECIFIC_NAME = 'RTrimWhitespace' 
	AND ROUTINE_TYPE = 'FUNCTION' 
)
BEGIN
	EXECUTE('CREATE FUNCTION dbo.RTrimWhitespace(@Input nvarchar(MAX)) RETURNS national character varying(MAX) AS BEGIN RETURN NULL; END;'); 
END


GO


ALTER FUNCTION dbo.RTrimWhitespace(@Input national character varying(MAX))
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

