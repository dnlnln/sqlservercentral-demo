-- <Migration ID="c26025cb-f045-4331-a9fc-d79b4ce43ee0" />
GO

PRINT N'Creating index [IX_Answers] on [dbo].[Answers]'
GO
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'IX_Answers' AND object_id = OBJECT_ID(N'[dbo].[Answers]'))
CREATE NONCLUSTERED INDEX [IX_Answers] ON [dbo].[Answers] ([AnswerText])
GO
