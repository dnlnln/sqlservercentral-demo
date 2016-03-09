CREATE TABLE [dbo].[EmailRecipients]
(
[EmailRecipientID] [int] NOT NULL IDENTITY(1, 1),
[EmailID] [int] NOT NULL,
[UserID] [int] NULL,
[SentDate] [datetime] NULL,
[SendingComputerName] [nvarchar] (100) NULL,
[ArbitraryRecipientName] [nvarchar] (500) NULL,
[ArbitraryRecipientEmailAddress] [nvarchar] (500) NULL
)
GO
ALTER TABLE [dbo].[EmailRecipients] ADD CONSTRAINT [PK_EmailRecipients] PRIMARY KEY CLUSTERED  ([EmailRecipientID])
GO
CREATE NONCLUSTERED INDEX [IX_EmailAndRecipients] ON [dbo].[EmailRecipients] ([EmailID], [EmailRecipientID]) INCLUDE ([SendingComputerName], [SentDate])
GO
CREATE NONCLUSTERED INDEX [SSC_SentDate] ON [dbo].[EmailRecipients] ([SentDate], [SendingComputerName]) INCLUDE ([EmailID], [EmailRecipientID])
GO
CREATE NONCLUSTERED INDEX [IX_EmailRecipients_UserID_SentDate] ON [dbo].[EmailRecipients] ([UserID], [SentDate]) INCLUDE ([EmailID], [EmailRecipientID], [SendingComputerName])
GO
ALTER TABLE [dbo].[EmailRecipients] ADD CONSTRAINT [FK_EmailRecipients_Emails] FOREIGN KEY ([EmailID]) REFERENCES [dbo].[Emails] ([EmailID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailRecipients] ADD CONSTRAINT [FK_EmailRecipients_EmailRecipients] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[EmailRecipients] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[EmailRecipients] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[EmailRecipients] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[EmailRecipients] TO [ssc_webapplication]
GO
