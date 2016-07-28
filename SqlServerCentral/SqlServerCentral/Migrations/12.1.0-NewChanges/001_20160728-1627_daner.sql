﻿-- <Migration ID="a20fbf6d-d234-4707-b438-8d7afd785239" />
GO

-- 0003_EmailerConfiguration_CreatedDate.sql

PRINT N'Adding [dbo].[EmailerConfiguration].[CreatedDate] column (empty)'
GO
ALTER TABLE [dbo].[EmailerConfiguration] 
	ADD [CreatedDate] [datetime2] NULL
GO

PRINT 'Populating existing rows with data from the [LastModifiedDate] column...'
UPDATE dbo.EmailerConfiguration
	SET CreatedDate = LastModifiedDate
	WHERE CreatedDate IS NULL
GO

PRINT 'Adding default constraint...'
ALTER TABLE dbo.EmailerConfiguration 
	ADD CONSTRAINT DF_EmailerConfiguration_CreatedDate 
	DEFAULT sysdatetime() 
	FOR CreatedDate
GO

PRINT 'Done. Altering column to NOT NULL'
ALTER TABLE [dbo].[EmailerConfiguration] ALTER COLUMN [CreatedDate] [datetime2] NOT NULL
GO