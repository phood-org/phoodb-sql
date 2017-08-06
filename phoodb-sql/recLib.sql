CREATE TABLE [dbo].[recLib]
(
	[RecId] INT NOT NULL, 
    [LibId] INT NOT NULL,
	PRIMARY KEY ([RecId], [LibId]),
	FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe](ID),
	FOREIGN KEY ([LibId]) REFERENCES [dbo].[library](ID) 
)
