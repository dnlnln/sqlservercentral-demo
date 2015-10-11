CREATE TABLE [dbo].[Users]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[SingleSignonMemberID] [int] NOT NULL,
[EmailAddress] [nvarchar] (250) NOT NULL,
[DisplayName] [nvarchar] (100) NOT NULL,
[CompanyID] [int] NULL,
[Biography] [text] NULL,
[Address] [nvarchar] (255) NULL,
[PostCode] [nvarchar] (30) NULL,
[Country] [nvarchar] (50) NULL,
[AuthorFirstName] [varchar] (100) NULL,
[AuthorLastName] [varchar] (100) NULL,
[AuthorFullName] [varchar] (200) NULL,
[AuthorForumID] [int] NULL,
[IsRegularAuthor] [bit] NOT NULL CONSTRAINT [DF_Users_IsRegularAuthor] DEFAULT ((0)),
[LastLoginDate] [datetime] NOT NULL,
[PaymentDetails] [nvarchar] (500) NULL
)
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([UserID])
GO
CREATE NONCLUSTERED INDEX [IX_AuthorNames] ON [dbo].[Users] ([AuthorFullName])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UsersDisplayName] ON [dbo].[Users] ([DisplayName])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UsersEmailAddress] ON [dbo].[Users] ([EmailAddress])
GO
CREATE NONCLUSTERED INDEX [IX_UsersSSOID] ON [dbo].[Users] ([SingleSignonMemberID])
GO
CREATE NONCLUSTERED INDEX [IX_UsersDisplayNameUserID] ON [dbo].[Users] ([UserID], [DisplayName])
GO
GRANT SELECT ON  [dbo].[Users] TO [ForumsUser]
GRANT SELECT ON  [dbo].[Users] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Users] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Users] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Users] TO [ssc_webapplication]
GO
