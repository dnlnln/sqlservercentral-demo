﻿-- <Migration ID="43b887f1-1dce-436a-bd3a-5a36f1f8f04b" />
GO

SET DATEFORMAT YMD;


GO
DECLARE @pv AS BINARY (16);


GO
IF (SELECT COUNT(*)
    FROM   [dbo].[EmailerConfiguration]) = 0
    BEGIN
        PRINT (N'Add 4 rows to [dbo].[EmailerConfiguration]');
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority], [LastModifiedDate])
        VALUES                                   (N'252314-SQL1', 1, 100, 1, '2014-12-01 12:48:12.0000000');
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority], [LastModifiedDate])
        VALUES                                   (N'252315-SQL2', 1, 1000, 2, '2014-12-01 12:48:12.0000000');
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority], [LastModifiedDate])
        VALUES                                   (N'252838-VMWEB3', 1, 10, 1, '2014-12-01 12:48:12.0000000');
        INSERT  INTO [dbo].[EmailerConfiguration] ([ComputerName], [Active], [BatchSize], [Priority], [LastModifiedDate])
        VALUES                                   (N'252839-VMWEB4', 1, 1000, 2, '2014-12-01 12:48:12.0000000');
    END


GO