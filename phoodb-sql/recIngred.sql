CREATE TABLE [dbo].[recIngred] (
    [RecId]      INT            NOT NULL,
    [IngredId]   INT            NOT NULL,
    [Amt]        DECIMAL (6, 3) NULL,
    [Unit]       VARCHAR (50)   NULL,
    [IngredRole] VARCHAR (50)   DEFAULT ('Primary') NULL,
    [IngredRec]  INT            NULL,
    [SubFor]     INT            NULL,
    PRIMARY KEY CLUSTERED ([RecId] ASC, [IngredId] ASC),
    FOREIGN KEY ([IngredId]) REFERENCES [dbo].[ingredient] ([id]),
    FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe] ([id])
);


