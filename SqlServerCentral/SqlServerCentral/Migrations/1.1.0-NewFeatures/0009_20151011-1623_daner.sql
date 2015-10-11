-- <Migration ID="6f027578-cea6-422a-a7e9-18fae9bc15c0" />
GO

PRINT N'Altering [dbo].[StaticTextFragments]...';


GO
ALTER TABLE [dbo].[StaticTextFragments]
    ADD [UpdatedDate] DATETIME2 (7) CONSTRAINT [DF_StaticTextFragments_UpdatedDate] DEFAULT sysdatetime() NOT NULL;

