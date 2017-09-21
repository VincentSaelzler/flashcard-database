CREATE TABLE [dbo].[Question]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Response] INT NOT NULL, 
    [RoundId] INT NOT NULL, 
    [FlashCardId] INT NOT NULL, 
    CONSTRAINT [FK_Question_Round] FOREIGN KEY ([RoundId]) REFERENCES [Round]([Id]), 
    CONSTRAINT [FK_Question_FlashCard] FOREIGN KEY (FlashCardId) REFERENCES FlashCard(Id)
)
