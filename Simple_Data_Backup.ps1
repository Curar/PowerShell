Get-ChildItem -Path "C:\BACKUP_FOLDERS\" -Directory -recurse | where {$_.LastWriteTime -le $(Get-date).Adddays(-14)} | Remove-Item -recurse -force
Get-childitem -Path "D:\WindowsImageBackup\" | where-object {$_.LastWriteTime -le (Get-date).AddDays(-7)} | Copy-Item -destination "C:\BACKUP_FOLDERS\" -Recurse -Force
