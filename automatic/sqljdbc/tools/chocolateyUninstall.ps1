$target = Join-Path $ENV:PROGRAMFILES 'Microsoft JDBC DRIVER 6.0 for SQL Server'

Remove-Item -Force -Recurse -Path $target | Out-Null
