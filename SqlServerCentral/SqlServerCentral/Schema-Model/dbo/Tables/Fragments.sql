CREATE TABLE [dbo].[Fragments]
(
[ContentItemID] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[Fragments] ADD CONSTRAINT [PK_Fragments] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[Fragments] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[Fragments] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[Fragments] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[Fragments] TO [ssc_webapplication]
GO
