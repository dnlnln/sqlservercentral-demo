-- <Migration ID="df43ebf9-368d-4217-8cbb-a00c7f2c7858" />
GO

PRINT N'Altering [dbo].[EmailerConfiguration]'
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD
[NewCol] [nchar] (10) NULL
GO
