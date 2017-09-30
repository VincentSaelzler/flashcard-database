CREATE TABLE [dbo].[Question]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Product] INT NOT NULL, 
    [RoundId] INT NOT NULL, 
    [Multiplier] INT NOT NULL, 
    [Multiplicand] INT NOT NULL, 
    [Response] INT NULL, 
    CONSTRAINT [FK_Question_Round] FOREIGN KEY ([RoundId]) REFERENCES [Round]([Id]), 
)
