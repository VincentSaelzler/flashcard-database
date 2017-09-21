CREATE TABLE [dbo].[FlashCard]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Multiplier] INT NOT NULL, 
    [Multiplicand] INT NOT NULL, 
    CONSTRAINT [AK_FlashCard_Multiplier_Multiplicand] UNIQUE ([Multiplier],[Multiplicand]), 
)
