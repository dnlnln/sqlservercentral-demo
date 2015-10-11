CREATE TABLE [dbo].[CommunityServerBlogPosts]
(
[ContentItemID] [int] NOT NULL,
[CommunityServerBlogPostId] [int] NOT NULL,
[NumberOfComments] [int] NOT NULL CONSTRAINT [DF__Community__Numbe__00DF2177] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[CommunityServerBlogPosts] ADD CONSTRAINT [PK__Communit__B851BC8C7C1A6C5A] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
ALTER TABLE [dbo].[CommunityServerBlogPosts] ADD CONSTRAINT [FKBA84F2D3A18B6AD] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[BlogPosts] ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[CommunityServerBlogPosts] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[CommunityServerBlogPosts] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[CommunityServerBlogPosts] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[CommunityServerBlogPosts] TO [ssc_webapplication]
GO
