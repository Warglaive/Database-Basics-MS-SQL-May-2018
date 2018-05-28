BACKUP DATABASE Softuni 
TO DISK = 'E:\softuniDBBackup\softuni-backup.bak'

DROP DATABASE Softuni

RESTORE DATABASE Softuni
FROM DISK = 'E:\softuniDBBackup\softuni-backup.bak'
Use Softuni