CREATE TABLE [dbo].[Articles]
(
[ContentItemID] [int] NOT NULL,
[LoginRequired] [bit] NOT NULL CONSTRAINT [DF__Articles__LoginR__2334397B] DEFAULT ((1))
)
GO
ALTER TABLE [dbo].[Articles] ADD CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[Articles] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Articles] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Articles] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Articles] TO [ssc_webapplication]
GO
