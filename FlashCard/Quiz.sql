CREATE TABLE [dbo].[Quiz]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Started] DATETIME2 NOT NULL, 
    [Finished] DATETIME2 NULL, 
    [PersonId] INT NOT NULL, 
    CONSTRAINT [FK_Quiz_Person] FOREIGN KEY (PersonId) REFERENCES [Student]([Id])
)
