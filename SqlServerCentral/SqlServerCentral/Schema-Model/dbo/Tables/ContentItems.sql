CREATE TABLE [dbo].[ContentItems]
(
[ContentItemID] [int] NOT NULL IDENTITY(1, 1),
[PrimaryTagID] [int] NULL,
[Title] [varchar] (200) NOT NULL,
[ShortTitle] [varchar] (200) NULL,
[Description] [varchar] (3500) NULL,
[Text] [text] NULL,
[ExternalURL] [varchar] (250) NULL,
[PublishingStatus] [int] NOT NULL,
[SourceID] [int] NULL,
[ForumThreadID] [int] NULL,
[UpdatesContentItemID] [int] NULL,
[CreatedDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NULL,
[DollarValue] [float] NULL,
[IconFileID] [int] NULL,
[DisplayStyle] [int] NOT NULL CONSTRAINT [DF_ContentItems_DisplayStyle] DEFAULT ((0)),
[PopularityRank] [float] NOT NULL CONSTRAINT [DF__ContentIt__Popul__1F98B2C1] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[ContentItems] ADD CONSTRAINT [PK_ContentItems] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
CREATE NONCLUSTERED INDEX [idx_ContentItems_PopularityRank] ON [dbo].[ContentItems] ([PopularityRank])
GO
CREATE NONCLUSTERED INDEX [ssc_3638] ON [dbo].[ContentItems] ([PrimaryTagID]) INCLUDE ([ContentItemID])
GO
CREATE NONCLUSTERED INDEX [ssc_publishingstatus_contentitemid] ON [dbo].[ContentItems] ([PublishingStatus], [ContentItemID])
GO
CREATE NONCLUSTERED INDEX [ssc_publishingstatus_createddate] ON [dbo].[ContentItems] ([PublishingStatus], [CreatedDate]) INCLUDE ([ContentItemID])
GO
CREATE NONCLUSTERED INDEX [ssc_5803] ON [dbo].[ContentItems] ([PublishingStatus], [ExternalURL]) INCLUDE ([ContentItemID], [Title])
GO
CREATE NONCLUSTERED INDEX [ssc_216] ON [dbo].[ContentItems] ([UpdatesContentItemID]) INCLUDE ([ContentItemID], [CreatedDate], [Description], [DisplayStyle], [DollarValue], [ExternalURL], [ForumThreadID], [IconFileID], [LastModifiedDate], [PrimaryTagID], [PublishingStatus], [ShortTitle], [SourceID], [Title])
GO
ALTER TABLE [dbo].[ContentItems] ADD CONSTRAINT [FK_ContentItems_FileBlobs] FOREIGN KEY ([IconFileID]) REFERENCES [dbo].[FileBlobs] ([FileID])
GO
ALTER TABLE [dbo].[ContentItems] ADD CONSTRAINT [FK_ContentItems_Tags] FOREIGN KEY ([PrimaryTagID]) REFERENCES [dbo].[Tags] ([TagID])
GO
GRANT SELECT ON  [dbo].[ContentItems] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[ContentItems] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[ContentItems] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[ContentItems] TO [ssc_webapplication]
GO
