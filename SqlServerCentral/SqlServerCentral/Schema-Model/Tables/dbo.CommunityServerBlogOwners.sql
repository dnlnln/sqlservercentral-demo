CREATE TABLE [dbo].[CommunityServerBlogOwners]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[CommunityServerBlogOwners] ADD CONSTRAINT [PK__Communit__3214EC071A9EF37A] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[CommunityServerBlogOwners] ADD CONSTRAINT [UQ__Communit__1788CC4D1D7B6025] UNIQUE NONCLUSTERED  ([UserId])
GO
ALTER TABLE [dbo].[CommunityServerBlogOwners] ADD CONSTRAINT [FK65BA0468A991877C] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserID])
GO
GRANT SELECT ON  [dbo].[CommunityServerBlogOwners] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[CommunityServerBlogOwners] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[CommunityServerBlogOwners] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[CommunityServerBlogOwners] TO [ssc_webapplication]
GO
