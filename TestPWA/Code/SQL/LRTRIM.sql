CREATE FUNCTION dbo.LTrimWhitespace(@Input VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @Output VARCHAR(MAX)
    DECLARE @Whitespace VARCHAR(20)
    DECLARE @Pos INT

    SET @Whitespace = CHAR(0) + CHAR(9) + CHAR(10) + CHAR(13) + CHAR(32)
    SET @Pos = 1

    WHILE CHARINDEX(SUBSTRING(@Input, @Pos, 1), @Whitespace) > 0
    BEGIN
        SET @Pos = @Pos + 1
    END

    SET @Output = RIGHT(@Input, LEN(@Input) - @Pos + 1)

    RETURN @Output
END


GO 


CREATE FUNCTION dbo.RTrimWhitespace(@Input VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @Output VARCHAR(MAX)
    DECLARE @Whitespace VARCHAR(20)
    DECLARE @Pos INT

    SET @Whitespace = CHAR(0) + CHAR(9) + CHAR(10) + CHAR(13) + CHAR(32)
    SET @Pos = LEN(@Input)

    WHILE CHARINDEX(SUBSTRING(@Input, @Pos, 1), @Whitespace) > 0
    BEGIN
        SET @Pos = @Pos - 1
    END

    SET @Output = LEFT(@Input, @Pos)

    RETURN @Output
END