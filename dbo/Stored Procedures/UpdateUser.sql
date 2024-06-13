
CREATE PROCEDURE [dbo].[UpdateUser] 
	@userId bigint
   ,@firstName nvarchar(150)
   ,@lastName nvarchar(150)
   ,@isAdmin bit
   ,@passwordHash nvarchar(255)
   ,@isUpdateSuccess BIT OUTPUT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	UPDATE [Users]
	SET FirstName = @firstName
	   ,LastName = @lastName
	   ,PasswordHash = @passwordHash
	   ,IsAdmin = @isAdmin
	WHERE Id = @userId 

	SET @isUpdateSuccess = CASE WHEN @@ROWCOUNT > 0 THEN 1 ELSE 0 END

END