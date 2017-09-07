-- <Migration ID="8b36c5e1-825a-421f-9a62-3e785dcb86de" />
GO

PRINT N'Altering [dbo].[Contacts]'
GO
ALTER TABLE [dbo].[Contacts] ADD
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF__Contacts__Create__15DA3E5D] DEFAULT (sysdatetime())
GO
