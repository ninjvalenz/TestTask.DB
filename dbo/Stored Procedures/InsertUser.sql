
CREATE PROCEDURE [dbo].[InsertUser] 
	@firstName nvarchar(150)
   ,@lastName nvarchar(150)
   ,@userName nvarchar(150)
   ,@passwordHash nvarchar(255)
   ,@isAdmin bit
   ,@companyId bigint
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [Users] 
	(
		FirstName
	   ,LastName
	   ,UserName
	   ,PasswordHash
	   ,IsAdmin
	   ,CompanyId
	)
	VALUES
	(
		@firstName
	   ,@lastName
	   ,@userName
	   ,@passwordHash
	   ,@isAdmin
	   ,@companyId
	)
END