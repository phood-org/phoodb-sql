CREATE TABLE [dbo].[recIngred]
(
	[RecId] INT NOT NULL, 
    [IngredId] INT NOT NULL, 
    [Amt] DECIMAL(6, 3) NULL, 
    [Unit] VARCHAR(50) NULL,
	PRIMARY KEY([RecId], [IngredId]),
	FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe](ID),
	FOREIGN KEY ([IngredId]) REFERENCES [dbo].[ingredient](ID) 
)
