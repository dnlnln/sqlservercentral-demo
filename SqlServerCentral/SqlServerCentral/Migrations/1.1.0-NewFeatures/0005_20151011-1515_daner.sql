-- <Migration ID="7c126564-1fe1-41a4-b3cd-9055a080dbba" />
GO

PRINT N'Altering [dbo].[Articles]...';


GO
ALTER TABLE [dbo].[Articles]
    ADD [UpdatedDate] DATETIME2 (7) CONSTRAINT [DF_Articles_UpdatedDate] DEFAULT sysdatetime() NOT NULL;

