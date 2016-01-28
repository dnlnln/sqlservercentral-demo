CREATE TABLE [dbo].[UserLogins]
(
[UserLoginRecordID] [int] NOT NULL IDENTITY(1, 1),
[UserID] [int] NOT NULL,
[Date] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[UserLogins] ADD CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED  ([UserLoginRecordID])
GO
ALTER TABLE [dbo].[UserLogins] ADD CONSTRAINT [FK_UserLogins_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[UserLogins] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[UserLogins] TO [ssc_webapplication]
GO
