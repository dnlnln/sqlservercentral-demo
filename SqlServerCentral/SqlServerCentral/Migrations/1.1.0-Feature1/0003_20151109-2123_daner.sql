-- <Migration ID="6809d412-fa1c-4820-b89f-afe8dfd30803" />
GO

PRINT N'Altering [dbo].[EmailerConfiguration]'
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_EmailerConfiguration_CreatedDate] DEFAULT (sysdatetime())
GO
