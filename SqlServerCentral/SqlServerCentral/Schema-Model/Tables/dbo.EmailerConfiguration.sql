CREATE TABLE [dbo].[EmailerConfiguration]
(
[ComputerName] [nvarchar] (100) NOT NULL,
[Active] [bit] NOT NULL,
[BatchSize] [int] NOT NULL,
[Priority] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[EmailerConfiguration] ADD CONSTRAINT [PK_EmailerConfiguration] PRIMARY KEY CLUSTERED  ([ComputerName])
GO
