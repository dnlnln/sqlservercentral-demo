CREATE TABLE [dbo].[BriefcaseEntryTags]
(
[EntryId] [int] NOT NULL,
[TagID] [int] NOT NULL
)
GO
CREATE NONCLUSTERED INDEX [ix_BriefcaseEntryTags_EntryId] ON [dbo].[BriefcaseEntryTags] ([EntryId])
GO
ALTER TABLE [dbo].[BriefcaseEntryTags] ADD CONSTRAINT [FKF19C93BBF75AD759] FOREIGN KEY ([EntryId]) REFERENCES [dbo].[BriefcaseEntries] ([Id])
GO
ALTER TABLE [dbo].[BriefcaseEntryTags] ADD CONSTRAINT [FKF19C93BB4B097D93] FOREIGN KEY ([TagID]) REFERENCES [dbo].[Tags] ([TagID])
GO
GRANT SELECT ON  [dbo].[BriefcaseEntryTags] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[BriefcaseEntryTags] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[BriefcaseEntryTags] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[BriefcaseEntryTags] TO [ssc_webapplication]
GO
