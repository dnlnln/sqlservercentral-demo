-- <Migration ID="011e31e6-af54-4f57-b708-2382bcaa2ff9" />
GO

PRINT N'Adding [dbo].[StaticTextFragments].[CreatedDate] column (empty)'
GO
ALTER TABLE [dbo].[StaticTextFragments] 
	ADD [CreatedDate] [datetime2] NULL
GO

PRINT 'Populating existing rows with data from the [PublishDate] column...'
UPDATE dbo.StaticTextFragments
	SET CreatedDate = PublishDate
	WHERE CreatedDate IS NULL
GO

PRINT 'Adding default constraint...'
ALTER TABLE dbo.StaticTextFragments 
	ADD CONSTRAINT DF_StaticTextFragments_CreatedDate 
	DEFAULT sysdatetime() 
	FOR CreatedDate
GO

PRINT 'Done. Settings as NOT NULL'
ALTER TABLE [dbo].[StaticTextFragments] ALTER COLUMN [CreatedDate] [datetime2] NOT NULL
GO
