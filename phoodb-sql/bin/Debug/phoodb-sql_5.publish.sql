﻿/*
Deployment script for phoodb

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "phoodb"
:setvar DefaultFilePrefix "phoodb"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
IF EXISTS (SELECT 1
           FROM   [sys].[databases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [sys].[databases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ALLOW_SNAPSHOT_ISOLATION OFF;
    END


GO
IF EXISTS (SELECT 1
           FROM   [sys].[databases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
PRINT N'Rename refactoring operation with key cde522ab-a420-4999-84f9-74c27a6b832e is skipped, element [dbo].[category].[Id] (SqlSimpleColumn) will not be renamed to ID';


GO
PRINT N'Rename refactoring operation with key 08b9a1ba-0d22-4874-9da7-0a9c5533564a is skipped, element [dbo].[enduser].[Id] (SqlSimpleColumn) will not be renamed to ID';


GO
PRINT N'Rename refactoring operation with key 5093e3be-fed1-4abb-a3e4-c34ce87edef8 is skipped, element [dbo].[ingredient].[Id] (SqlSimpleColumn) will not be renamed to ID';


GO
PRINT N'Rename refactoring operation with key c669a221-7314-4999-8e25-b5c399d86e43 is skipped, element [dbo].[library].[Id] (SqlSimpleColumn) will not be renamed to ID';


GO
PRINT N'Rename refactoring operation with key b08d5a4c-0afd-418e-a125-da9cf5e9b163 is skipped, element [dbo].[recipe].[Id] (SqlSimpleColumn) will not be renamed to ID';


GO
PRINT N'Rename refactoring operation with key 794abfee-87f8-46e6-a4eb-2fc69cde290e is skipped, element [dbo].[utensil].[Id] (SqlSimpleColumn) will not be renamed to ID';


GO
PRINT N'Rename refactoring operation with key c5c0ee7a-b3fe-4bb4-aeb2-08df87ad2b2f, 0010d1cb-a3cf-4024-abe7-f9bcdfc3d4ec is skipped, element [dbo].[recCat].[Id] (SqlSimpleColumn) will not be renamed to CatId';


GO
PRINT N'Rename refactoring operation with key 300456a1-2b5c-4699-b5db-0192673b3d31 is skipped, element [dbo].[recIngred].[Id] (SqlSimpleColumn) will not be renamed to RecId';


GO
PRINT N'Rename refactoring operation with key bea438fd-c279-49e6-9ec0-3216a8b5c864 is skipped, element [dbo].[recLib].[Id] (SqlSimpleColumn) will not be renamed to RecId';


GO
PRINT N'Rename refactoring operation with key 77e6e37a-9bbe-41bf-8cf6-ad11b8d9ee79 is skipped, element [dbo].[recRate].[Id] (SqlSimpleColumn) will not be renamed to UserId';


GO
PRINT N'Rename refactoring operation with key 7936ea70-bb71-4e0b-9405-26c0ea4dfa04 is skipped, element [dbo].[RecUten].[Id] (SqlSimpleColumn) will not be renamed to RecId';


GO
PRINT N'Rename refactoring operation with key 7044c519-4157-446b-a9d8-2696bfcad9e6 is skipped, element [dbo].[userIngred].[Id] (SqlSimpleColumn) will not be renamed to UserId';


GO
PRINT N'Rename refactoring operation with key 64bb66f2-dc34-4e0f-afb2-829632bdf5a1 is skipped, element [dbo].[userLib].[Id] (SqlSimpleColumn) will not be renamed to UserId';


GO
PRINT N'Rename refactoring operation with key 06c757f6-1df2-4963-bb17-fed5e5b7a3c9 is skipped, element [dbo].[userUten].[Id] (SqlSimpleColumn) will not be renamed to UserId';


GO
PRINT N'Update complete.';


GO