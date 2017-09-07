-- <Migration ID="fcefc59c-343c-43b4-b9c6-c3417b050dba" />
GO

PRINT N'Altering [dbo].[EventLog]'
GO
ALTER TABLE [dbo].[EventLog] ADD
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF__EventLog__Create__16CE6296] DEFAULT (sysdatetime())
GO
