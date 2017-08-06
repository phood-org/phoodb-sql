CREATE TABLE [dbo].[userLib]
(
	[UserId] INT NOT NULL, 
    [LibId] INT NOT NULL,
	PRIMARY KEY ([UserId], [LibId]),
	FOREIGN KEY ([UserId]) REFERENCES [dbo].[enduser](ID) ,
	FOREIGN KEY ([LibId]) REFERENCES [dbo].[library](ID) 
)
