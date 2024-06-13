CREATE TABLE [dbo].[Users] (
    [Id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [FirstName]    NVARCHAR (150) NOT NULL,
    [LastName]     NVARCHAR (150) NOT NULL,
    [UserName]     NVARCHAR (10)  NOT NULL,
    [PasswordHash] NVARCHAR (255) NOT NULL,
    [IsAdmin]      BIT            NOT NULL,
    [CompanyId]    BIGINT         NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_Company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([Id])
);

