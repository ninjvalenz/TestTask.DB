
CREATE PROCEDURE GetUserById 
	@userId bigint
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Id
	      ,FirstName
		  ,LastName
		  ,UserName
		  ,IsAdmin
		  ,CompanyId
    FROM [Users]
	WHERE Id = @userId 

END