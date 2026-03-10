DECLARE @DatabaseName NVARCHAR(100)
DECLARE @BackupPath NVARCHAR(500)
DECLARE @FileName NVARCHAR(500)

SET @DatabaseName = 'Nome_do_seu_banco'
SET @BackupPath = 'Disco_de_armazenamento_backups'

SET @FileName = @BackupPath + @DatabaseName + '_' +
CONVERT(VARCHAR, GETDATE(), 112) + '.trn'

BACKUP LOG @DatabaseName
TO DISK = @FileName
