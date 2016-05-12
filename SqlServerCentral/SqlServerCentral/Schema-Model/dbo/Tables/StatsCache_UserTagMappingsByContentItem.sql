CREATE TABLE [dbo].[StatsCache_UserTagMappingsByContentItem]
(
[ContentItemID] [int] NOT NULL,
[AvgNumMappings] [float] NOT NULL,
[StDevNumMappings] [float] NOT NULL,
[NumUsersWithTags] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[StatsCache_UserTagMappingsByContentItem] ADD CONSTRAINT [PK_Cache_UserTagMappingsByContentItem] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
