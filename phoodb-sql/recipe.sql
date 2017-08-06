CREATE TABLE [dbo].[recipe]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(200) NULL, 
    [CookTime] DECIMAL(6, 3) NULL, 
    [CookUnit] VARCHAR(10) NULL, 
    [Instructions] VARCHAR(MAX) NULL, 
    [Yield] VARCHAR(100) NULL, 
    [ServeMin] INT NULL, 
    [ServeMax] INT NULL
)
