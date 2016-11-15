CREATE TABLE [dbo].[Scripts]
(
[ContentItemID] [int] NOT NULL,
[SqlCode] [ntext] NULL,
[Rgtool] [ntext] NULL
)
GO
ALTER TABLE [dbo].[Scripts] ADD CONSTRAINT [PK_Scripts] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[Scripts] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[Scripts] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[Scripts] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[Scripts] TO [ssc_webapplication]
GO
