
CREATE PROCEDURE [dbo].[DeleteUser] 
	@userId bigint
   ,@isDeleted BIT OUTPUT
AS
BEGIN
	
	SET NOCOUNT ON;
    
	DELETE [Users] WHERE Id = @userId
	SET @isDeleted = CASE WHEN @@ROWCOUNT > 0 THEN 1 ELSE 0 END

END