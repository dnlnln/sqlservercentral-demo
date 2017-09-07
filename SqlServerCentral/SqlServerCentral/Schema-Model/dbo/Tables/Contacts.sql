CREATE TABLE [dbo].[Contacts]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (100) NULL,
[PhoneWork] [nvarchar] (25) NULL,
[PhoneMobile] [nvarchar] (25) NULL,
[Address1] [nvarchar] (128) NULL,
[Address2] [nvarchar] (128) NULL,
[Address3] [nvarchar] (128) NULL,
[JoiningDate] [datetime] NULL CONSTRAINT [DF__Contacts__Joinin__164452B1] DEFAULT (getdate()),
[Email] [nvarchar] (256) NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF__Contacts__Create__15DA3E5D] DEFAULT (sysdatetime())
)
GO
ALTER TABLE [dbo].[Contacts] ADD CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED  ([ID])
GO
