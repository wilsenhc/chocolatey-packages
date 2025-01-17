@{
  ModuleVersion     = '0.1.0'
  GUID              = '8583b6e0-84ba-4a7b-a73c-1fb67349f969'
  Author            = 'dgalbraith'
  Description       = 'PowerShell functions to assist with the construction of Chocolatey packages'
  NestedModules     = @(
    '.\functions\Get-RedirectedUri.ps1'
  )
  FunctionsToExport = @(
    'Get-RedirectedUri'
  )
}
