CREATE TABLE [dbo].[recCat]
(
	[CatId] INT NOT NULL , 
    [RecId] INT NOT NULL, 
    PRIMARY KEY ([CatId], [RecId]),
	FOREIGN KEY ([CatId]) REFERENCES [dbo].[category](ID),
	FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe](ID) 
)
