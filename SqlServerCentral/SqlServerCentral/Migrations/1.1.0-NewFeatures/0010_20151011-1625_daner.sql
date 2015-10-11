-- <Migration ID="d47e6a43-7536-4504-b16b-eb2c71cd0ef9" />
GO

PRINT N'Dropping constraints from [dbo].[StaticTextFragments]'
GO
ALTER TABLE [dbo].[StaticTextFragments] DROP CONSTRAINT [DF_StaticTextFragments_CreatedDate]
GO
PRINT N'Altering [dbo].[StaticTextFragments]'
GO
UPDATE [dbo].[StaticTextFragments] SET [CreatedDate]=(sysdatetime()) WHERE [CreatedDate] IS NULL
GO
ALTER TABLE [dbo].[StaticTextFragments] ALTER COLUMN [CreatedDate] [datetime2] NOT NULL
GO
PRINT N'Adding constraints to [dbo].[StaticTextFragments]'
GO
ALTER TABLE [dbo].[StaticTextFragments] ADD CONSTRAINT [DF_StaticTextFragments_CreatedDate] DEFAULT (sysdatetime()) FOR [CreatedDate]
GO
