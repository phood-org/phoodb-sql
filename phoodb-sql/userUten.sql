CREATE TABLE [dbo].[userUten]
(
	[UserId] INT NOT NULL, 
    [UtenId] INT NOT NULL,
	PRIMARY KEY([UserId], [UtenId]),
	FOREIGN KEY ([UserId]) REFERENCES [dbo].[enduser](ID) ,
	FOREIGN KEY ([UtenId]) REFERENCES [dbo].[utensil](ID) 
)
