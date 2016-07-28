CREATE TABLE [dbo].[Adverts]
(
[ContentItemID] [int] NOT NULL,
[PlainTextRepresentation] [text] NULL
)
GO
ALTER TABLE [dbo].[Adverts] ADD CONSTRAINT [PK_Adverts] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[Adverts] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[Adverts] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[Adverts] TO [ssc_webapplication]
GO
