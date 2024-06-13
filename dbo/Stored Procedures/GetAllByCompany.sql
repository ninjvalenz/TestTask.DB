
CREATE PROCEDURE GetAllByCompany 
	@companyId bigint
   ,@isAdmin bit
AS
BEGIN

	SET NOCOUNT ON;

	SELECT FirstName
	      ,LastName
	FROM [Users] 
	WHERE CompanyId = @companyId AND
	      (@isAdmin = 0 AND IsAdmin = @isAdmin)
END