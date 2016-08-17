CREATE TABLE [dbo].[FileBlobs]
(
[FileID] [int] NOT NULL IDENTITY(1, 1),
[Data] [image] NOT NULL
)
GO
ALTER TABLE [dbo].[FileBlobs] ADD CONSTRAINT [PK_FileBlobs] PRIMARY KEY CLUSTERED  ([FileID])
GO
GRANT SELECT ON  [dbo].[FileBlobs] TO [ssc_webapplication]
GO
GRANT INSERT ON  [dbo].[FileBlobs] TO [ssc_webapplication]
GO
GRANT DELETE ON  [dbo].[FileBlobs] TO [ssc_webapplication]
GO
GRANT UPDATE ON  [dbo].[FileBlobs] TO [ssc_webapplication]
GO
