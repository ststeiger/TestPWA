
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

