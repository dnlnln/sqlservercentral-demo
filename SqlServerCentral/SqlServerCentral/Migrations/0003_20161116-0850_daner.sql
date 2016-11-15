-- <Migration ID="3a8d559d-9159-44f5-9ebd-ab7864ceb0db" />
GO

PRINT N'Altering [dbo].[EmailerConfiguration]'
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD
[DateCreated] [datetime2] NOT NULL 
CONSTRAINT [DF_EmailerConfiguration_DateCreated] 
DEFAULT (sysdatetime())
GO
