-- <Migration ID="abf567c5-1d33-4c9e-b62a-4cd3997404b5" />
GO

PRINT N'Dropping constraints from [dbo].[EmailerConfiguration]'
GO
ALTER TABLE [dbo].[EmailerConfiguration] DROP CONSTRAINT [DF_EmailerConfiguration_CreatedDate]
GO
PRINT N'Adding constraints to [dbo].[EmailerConfiguration]'
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD CONSTRAINT [DF__EmailerCo__Creat__18E19391] DEFAULT (sysdatetime()) FOR [CreatedDate]
GO
