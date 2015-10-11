-- <Migration ID="56f88fe9-1a88-4364-930e-999d75ea4447" />
GO

PRINT N'Altering [dbo].[Articles]...';


GO
ALTER TABLE [dbo].[Articles]
    ADD [CreatedDate] DATETIME2 (7) CONSTRAINT [DF_Articles_CreatedDate] DEFAULT sysdatetime() NOT NULL;

