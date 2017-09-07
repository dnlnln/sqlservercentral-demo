-- <Migration ID="fc0768e9-500a-40b0-ace7-599c1268c08d" />
GO

PRINT N'Altering [dbo].[Contacts]...';


GO
ALTER TABLE [dbo].[Contacts]
    ADD [CreatedDate] DATETIME2 (7) CONSTRAINT [DF_Contacts_CreatedDate] DEFAULT sysdatetime() NOT NULL;

