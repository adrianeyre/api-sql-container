﻿/*
Deployment script for ProductsDb

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "ProductsDb"
:setvar DefaultFilePrefix "ProductsDb"
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
USE [$(DatabaseName)];


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

USE [$(DatabaseName)];
GO

DECLARE @PatchName VARCHAR(100)= 'AddProducts';

IF NOT EXISTS(SELECT 1 FROM [version].[Patch] WHERE [Name] = @PatchName)
BEGIN

MERGE INTO [dbo].[Products] as Target
USING (VALUES
   ('Product 1', 1.99),
   ('Product 2', 4.74)
)
AS SOURCE([Name], [Price])
ON Target.[Name] = Source.[Name]

WHEN MATCHED THEN
UPDATE SET [Name] = Source.[Name], [Price] = Source.[Price]

WHEN NOT MATCHED BY TARGET THEN
INSERT ([Name], [Price])
VALUES ([Name], [Price]);
    
    INSERT INTO [version].[Patch] ([Name], [Description]) VALUES (@PatchName, 'Add default products');
END

GO

GO
PRINT N'Update complete.';


GO