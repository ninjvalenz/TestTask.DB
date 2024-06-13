CREATE TABLE [dbo].[RefreshToken] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [Token]       NVARCHAR (512) NOT NULL,
    [UserId]      BIGINT         NOT NULL,
    [ExpiryDate]  DATETIME       NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    [CreatedByIp] NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_RefreshToken] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RefreshToken_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

