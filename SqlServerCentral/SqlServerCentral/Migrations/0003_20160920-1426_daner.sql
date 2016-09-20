-- <Migration ID="594b907c-3f5c-4a6e-aba3-d6173dca2e4a" />
GO

PRINT N'Altering [dbo].[Answers]'
GO
ALTER TABLE [dbo].[Answers] ADD
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Answers_CreatedDate] DEFAULT (sysdatetime())
GO
