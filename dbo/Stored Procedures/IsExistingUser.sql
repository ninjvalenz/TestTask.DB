
CREATE PROCEDURE [dbo].[IsExistingUser]
	@firstName nvarchar(150)
   ,@lastName nvarchar(150)
   ,@userName nvarchar(150)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT CASE WHEN COUNT(Id) > 0 THEN 1 ELSE 0 END
	FROM [User] 
	WHERE FirstName = @firstName AND
	      LastName = @lastName AND
		  UserName = @userName
END