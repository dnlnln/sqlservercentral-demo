CREATE TABLE [dbo].[AuthorContentItem]
(
[ContentItemID] [int] NOT NULL,
[UserID] [int] NOT NULL,
[ordering] [tinyint] NOT NULL CONSTRAINT [DF_AuthorContentItem_ordering] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[AuthorContentItem] ADD CONSTRAINT [PK_AuthorContentItem] PRIMARY KEY CLUSTERED  ([ContentItemID], [UserID])
GO
CREATE NONCLUSTERED INDEX [IX_AuthorContentItem_UserID] ON [dbo].[AuthorContentItem] ([UserID])
GO
GRANT SELECT ON  [dbo].[AuthorContentItem] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[AuthorContentItem] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[AuthorContentItem] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[AuthorContentItem] TO [ssc_webapplication]
GO
