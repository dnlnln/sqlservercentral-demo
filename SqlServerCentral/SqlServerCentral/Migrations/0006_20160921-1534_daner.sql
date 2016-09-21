-- <Migration ID="3e87062b-8b74-4da7-84bf-690701b655e6" />
GO

PRINT N'Dropping constraints from [dbo].[ArticleSeries]'
GO
ALTER TABLE [dbo].[ArticleSeries] DROP CONSTRAINT [DF__ArticleSe__IsSta__24285DB4]
GO
PRINT N'Altering [dbo].[ArticleSeries]'
GO
ALTER TABLE [dbo].[ArticleSeries] ALTER COLUMN [IsStairwaySeries] [bit] NULL
GO
PRINT N'Adding constraints to [dbo].[ArticleSeries]'
GO
ALTER TABLE [dbo].[ArticleSeries] ADD CONSTRAINT [DF__ArticleSe__IsSta__24285DB4] DEFAULT ((1)) FOR [IsStairwaySeries]
GO
