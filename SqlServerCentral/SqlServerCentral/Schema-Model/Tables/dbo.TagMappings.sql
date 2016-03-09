CREATE TABLE [dbo].[TagMappings]
(
[TagMappingID] [int] NOT NULL IDENTITY(1, 1),
[TagID] [int] NOT NULL,
[ContentItemID] [int] NOT NULL,
[CreatedDate] [datetime] NULL CONSTRAINT [DF_TagMappings_CreatedDate] DEFAULT (getdate())
)
GO
ALTER TABLE [dbo].[TagMappings] ADD CONSTRAINT [PK_TagMappings] PRIMARY KEY CLUSTERED  ([TagMappingID])
GO
CREATE NONCLUSTERED INDEX [IX_TagMappings_ContentItem_Tag] ON [dbo].[TagMappings] ([ContentItemID], [TagID]) INCLUDE ([CreatedDate], [TagMappingID])
GO
CREATE NONCLUSTERED INDEX [IX_TagMappings_TagID_ContentItemID] ON [dbo].[TagMappings] ([TagID]) INCLUDE ([ContentItemID])
GO
ALTER TABLE [dbo].[TagMappings] ADD CONSTRAINT [FK_TagMappings_ContentItems] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[ContentItems] ([ContentItemID])
GO
ALTER TABLE [dbo].[TagMappings] ADD CONSTRAINT [FK_TagMappings_Tags] FOREIGN KEY ([TagID]) REFERENCES [dbo].[Tags] ([TagID])
GO
GRANT SELECT ON  [dbo].[TagMappings] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[TagMappings] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[TagMappings] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[TagMappings] TO [ssc_webapplication]
GO
