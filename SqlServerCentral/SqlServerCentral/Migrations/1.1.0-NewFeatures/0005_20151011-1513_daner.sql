-- <Migration ID="6ad2757c-a973-46dd-85a4-6a575ea18042" />
GO

PRINT N'Altering [dbo].[Answers]...';
GO
ALTER TABLE [dbo].[Answers]
    ADD [CreatedDate] DATETIME2 (7)
	CONSTRAINT [DF_Answers_CreatedDate] 
	DEFAULT sysdatetime() NOT NULL;

GO

