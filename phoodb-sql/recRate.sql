CREATE TABLE [dbo].[recRate]
(
	[UserId] INT NOT NULL, 
    [RecId] INT NOT NULL, 
    [Rate] INT NULL,
	PRIMARY KEY ([UserId], [RecId]),
	FOREIGN KEY ([UserId]) REFERENCES [dbo].[enduser](ID) ,
	FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe](ID) 
)
