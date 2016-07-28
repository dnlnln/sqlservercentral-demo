CREATE TABLE [dbo].[WidgetDescriptions]
(
[WidgetID] [int] NOT NULL,
[ShortDescription] [nvarchar] (2000) NULL,
[Description] [text] NULL,
[Picture] [image] NULL
)
GO
ALTER TABLE [dbo].[WidgetDescriptions] ADD CONSTRAINT [PK_WidgetDescriptions] PRIMARY KEY CLUSTERED  ([WidgetID])
GO
