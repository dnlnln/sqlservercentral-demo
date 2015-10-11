CREATE TABLE [dbo].[Articles]
(
[ContentItemID] [int] NOT NULL,
[LoginRequired] [bit] NOT NULL CONSTRAINT [DF__Articles__LoginR__2334397B] DEFAULT ((1)),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Articles_CreatedDate] DEFAULT (sysdatetime()),
[UpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Articles_UpdatedDate] DEFAULT (sysdatetime())
)
GO
ALTER TABLE [dbo].[Articles] ADD CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[Articles] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Articles] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Articles] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Articles] TO [ssc_webapplication]
GO
