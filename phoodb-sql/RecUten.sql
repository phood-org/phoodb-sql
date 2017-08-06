CREATE TABLE [dbo].[RecUten]
(
	[RecId] INT NOT NULL, 
    [UtenId] INT NOT NULL,
	PRIMARY KEY ([RecId], [UtenId]),
	FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe](ID),
	FOREIGN KEY ([UtenId]) REFERENCES [dbo].[utensil](ID) 
)
