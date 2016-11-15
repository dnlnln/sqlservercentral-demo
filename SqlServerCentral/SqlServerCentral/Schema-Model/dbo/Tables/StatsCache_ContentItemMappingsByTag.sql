CREATE TABLE [dbo].[StatsCache_ContentItemMappingsByTag]
(
[TagID] [int] NOT NULL,
[AvgNumMappings] [float] NOT NULL,
[StDevNumMappings] [float] NOT NULL,
[NumContentItems] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[StatsCache_ContentItemMappingsByTag] ADD CONSTRAINT [PK_TagMappingStatsCache] PRIMARY KEY CLUSTERED  ([TagID])
GO
