﻿CREATE TABLE [dbo].[Round]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Num] INT NOT NULL, 
    [QuizId] INT NOT NULL, 
    CONSTRAINT [FK_Round_Quiz] FOREIGN KEY ([QuizId]) REFERENCES [Quiz]([Id])
)