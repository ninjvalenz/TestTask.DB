
CREATE PROCEDURE [dbo].[AuthenticateUser] 
	@userName nvarchar(10)
   ,@passwordHash nvarchar(255)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Id 
	      ,FirstName
		  ,LastName
		  ,UserName
	FROM [Users]
	WHERE UserName = @userName AND
	      PasswordHash = @passwordHash

END