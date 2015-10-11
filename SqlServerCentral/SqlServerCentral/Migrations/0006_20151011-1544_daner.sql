-- <Migration ID="54f941e8-058d-4909-bb53-26b0dd2c74f1" />
GO

PRINT N'Dropping constraints from [dbo].[Articles]'
GO
ALTER TABLE [dbo].[Articles] DROP CONSTRAINT [DF_Articles_UpdatedDate]
GO
PRINT N'Dropping constraints from [dbo].[Articles]'
GO
ALTER TABLE [dbo].[Articles] DROP CONSTRAINT [DF_Articles_CreatedDate]
GO
PRINT N'Altering [dbo].[Articles]'
GO
ALTER TABLE [dbo].[Articles] DROP
COLUMN [UpdatedDate]
GO
EXEC sp_rename N'[dbo].[Articles].[CreatedDate]', N'PublishDate', N'COLUMN'
GO
