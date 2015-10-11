-- <Migration ID="011e31e6-af54-4f57-b708-2382bcaa2ff9" />
GO

PRINT N'Altering [dbo].[StaticTextFragments]'
GO
ALTER TABLE [dbo].[StaticTextFragments] 
	ADD [CreatedDate] [datetime2] NULL
GO

UPDATE dbo.StaticTextFragments
	SET CreatedDate = PublishDate
	WHERE CreatedDate IS NULL
GO

ALTER TABLE dbo.StaticTextFragments 
	ADD CONSTRAINT DF_StaticTextFragments_CreatedDate 
	DEFAULT sysdatetime() 
	FOR CreatedDate
GO
