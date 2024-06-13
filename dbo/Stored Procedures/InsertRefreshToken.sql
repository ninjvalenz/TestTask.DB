
CREATE PROCEDURE InsertRefreshToken 
	@token nvarchar(512)
   ,@userId bigint
   ,@expiryDate datetime
   ,@createdDate datetime
   ,@createdByIp nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE [RefreshToken] WHERE UserId = @userId

	INSERT INTO [RefreshToken]
	(
		Token
	   ,UserId
	   ,ExpiryDate
	   ,CreatedDate
	   ,CreatedByIp
	)
	VALUES
	(
		@token
	   ,@userId
	   ,@expiryDate
	   ,@createdDate
	   ,@createdByIp
	)

END