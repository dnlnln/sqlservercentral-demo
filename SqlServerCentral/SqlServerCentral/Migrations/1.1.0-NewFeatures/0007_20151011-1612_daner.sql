-- <Migration ID="07d84db9-e5a5-443f-9d8b-c906c6cc0f14" />
GO

PRINT N'Dropping constraints from [dbo].[StaticTextFragments]'
GO
ALTER TABLE [dbo].[StaticTextFragments] DROP CONSTRAINT [DF_StaticTextFragments_PublishDate]
GO
