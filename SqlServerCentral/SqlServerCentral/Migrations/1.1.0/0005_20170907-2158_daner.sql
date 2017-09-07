-- <Migration ID="c7d5d3e2-47a4-427a-89ec-3f23b14412dd" />
GO

SET DATEFORMAT YMD;


GO
DECLARE @pv AS BINARY (16);


GO
PRINT (N'Update 1 row in [dbo].[EmailerConfiguration]');

UPDATE [dbo].[EmailerConfiguration]
SET    [Priority] = 3
WHERE  [ComputerName] = N'252839-VMWEB4';


GO