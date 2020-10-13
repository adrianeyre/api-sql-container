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
