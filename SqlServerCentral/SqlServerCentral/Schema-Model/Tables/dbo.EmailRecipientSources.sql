CREATE TABLE [dbo].[EmailRecipientSources]
(
[EmailRecipientSourceID] [int] NOT NULL IDENTITY(1, 1),
[EmailID] [int] NOT NULL,
[RoleName] [varchar] (200) NULL,
[MailingGroupID] [varchar] (200) NULL,
[SpecificUserID] [int] NULL,
[IsForTesting] [bit] NOT NULL,
[ArbitraryRecipientName] [nvarchar] (500) NULL,
[ArbitraryRecipientEmailAddress] [nvarchar] (500) NULL
)
GO
ALTER TABLE [dbo].[EmailRecipientSources] ADD CONSTRAINT [PK_EmailRecipientsRoles] PRIMARY KEY CLUSTERED  ([EmailRecipientSourceID])
GO
CREATE NONCLUSTERED INDEX [IX_EmailRecipients_EmailID_IsForTesting] ON [dbo].[EmailRecipientSources] ([EmailID], [IsForTesting]) INCLUDE ([EmailRecipientSourceID], [MailingGroupID], [SpecificUserID])
GO
CREATE NONCLUSTERED INDEX [ssp_RoleName] ON [dbo].[EmailRecipientSources] ([RoleName]) INCLUDE ([EmailID])
GO
ALTER TABLE [dbo].[EmailRecipientSources] ADD CONSTRAINT [FK_EmailRecipientsRoles_Emails] FOREIGN KEY ([EmailID]) REFERENCES [dbo].[Emails] ([EmailID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailRecipientSources] ADD CONSTRAINT [FK_EmailRecipientSources_Users] FOREIGN KEY ([SpecificUserID]) REFERENCES [dbo].[Users] ([UserID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[EmailRecipientSources] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[EmailRecipientSources] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[EmailRecipientSources] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[EmailRecipientSources] TO [ssc_webapplication]
GO
