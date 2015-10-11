CREATE TABLE [dbo].[ContentItemRatings]
(
[ContentItemRatingID] [int] NOT NULL IDENTITY(1, 1),
[Rating] [float] NOT NULL,
[ContentItemID] [int] NOT NULL,
[UserID] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_ContentItemRatings_CreatedDate] DEFAULT (getdate())
)
GO
ALTER TABLE [dbo].[ContentItemRatings] ADD CONSTRAINT [PK_ContentItemRatings] PRIMARY KEY CLUSTERED  ([ContentItemRatingID])
GO
GRANT SELECT ON  [dbo].[ContentItemRatings] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[ContentItemRatings] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[ContentItemRatings] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[ContentItemRatings] TO [ssc_webapplication]
GO
