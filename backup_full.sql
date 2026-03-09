
DECLARE @DatabaseName NVARCHAR(100)
DECLARE @BackupPath NVARCHAR(500)
DECLARE @FileName NVARCHAR(500)

SET @DatabaseName = 'SeuBanco'
SET @BackupPath = 'C:\Backup\'

SET @FileName = @BackupPath + @DatabaseName + '_' +
CONVERT(VARCHAR, GETDATE(), 112) + '.bak'

BACKUP DATABASE @DatabaseName
TO DISK = @FileName
WITH FORMAT,
MEDIANAME = 'SQLServerBackups',
NAME = 'Full Backup'
