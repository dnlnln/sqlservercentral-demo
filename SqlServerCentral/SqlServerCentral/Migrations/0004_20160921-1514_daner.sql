-- <Migration ID="7b4936d5-2292-4b15-b7bd-56b518d3e093" />
GO

PRINT N'Altering [dbo].[AnalysisLog]'
GO
ALTER TABLE [dbo].[AnalysisLog] ADD
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_AnalysisLog_CreatedDate] DEFAULT (sysdatetime())
GO
