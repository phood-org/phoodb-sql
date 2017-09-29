CREATE TABLE [dbo].[recRate] (
    [UserId]     INT           NOT NULL,
    [RecId]      INT           NOT NULL,
    [Rate]       INT           NULL,
    [IsFavorite] BIT           NULL,
    [Review]     VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC, [RecId] ASC),
    FOREIGN KEY ([RecId]) REFERENCES [dbo].[recipe] ([id]),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[enduser] ([id])
);


