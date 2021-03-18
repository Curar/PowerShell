Get-ChildItem -Path "C:\BACKUP_FOLDERS\" -Directory -recurse | where-object {$_.LastWriteTime -le $(Get-date).Adddays(-14)} | Remove-Item -Recurse -Force
Get-ChildItem -Path "D:\WindowsImageBackup\" | where-object {$_.LastWriteTime -le (Get-date).AddDays(-7)} | Copy-Item -destination "C:\BACKUP_FOLDERS\" -Recurse -Force
