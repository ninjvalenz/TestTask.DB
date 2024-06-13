
CREATE PROCEDURE IsTokenUnique 
	@token nvarchar(512)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT CASE WHEN COUNT(Id) > 0 THEN 1 ELSE 0 END
	FROM [RefreshToken] 
	WHERE Token = @token
END