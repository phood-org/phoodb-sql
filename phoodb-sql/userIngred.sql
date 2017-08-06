CREATE TABLE [dbo].[userIngred]
(
	[UserId] INT NOT NULL, 
    [IngredId] INT NOT NULL, 
    [Amt] DECIMAL(6, 3) NULL, 
    [Unit] VARCHAR(50) NULL,
	PRIMARY KEY ([UserId], [IngredId]),
	FOREIGN KEY ([UserId]) REFERENCES [dbo].[enduser](ID) ,
	FOREIGN KEY ([IngredId]) REFERENCES [dbo].[ingredient](ID) 
)
