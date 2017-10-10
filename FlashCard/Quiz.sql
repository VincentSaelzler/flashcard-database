CREATE TABLE [dbo].[Quiz]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[Description] NVARCHAR(255),
    [Started] DATETIME2 NOT NULL, 
    [Finished] DATETIME2 NULL, 
    [PersonId] INT NULL, 
    CONSTRAINT [FK_Quiz_Person] FOREIGN KEY (PersonId) REFERENCES [Student]([Id])
)
