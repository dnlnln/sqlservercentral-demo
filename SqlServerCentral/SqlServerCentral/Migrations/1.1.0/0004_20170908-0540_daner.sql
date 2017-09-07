-- <Migration ID="a0533573-a3f3-4f37-be9a-187e8f818e55" />
GO

PRINT N'Altering [dbo].[EmailerConfiguration]'
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD
[NewCol] [nchar] (10) NULL
GO
