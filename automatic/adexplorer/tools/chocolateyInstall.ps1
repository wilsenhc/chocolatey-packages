﻿$ErrorActionPreference = 'Stop'

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$regRoot = 'HKCU:\Software\Sysinternals'
$regPkg  = 'Active Directory Explorer'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'https://download.sysinternals.com/files/AdExplorer.zip'
  checksum      = '3F4137464DF5156C629C8E1827151CBFC7FA99CC10C43E187D7899E6500791EC'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$regPath = Join-Path $regRoot $regPkg

if (!(Test-Path $regRoot)) {
  New-Item -Path "$regRoot"
}

if (!(Test-Path $regPath)) {
  New-Item -Path "$regRoot" -Name "$regPkg"
}

Set-ItemProperty -Path "$regPath" -Name EulaAccepted -Value 1

if ((Get-ItemProperty -Path "$regPath").EulaAccepted -ne 1) {
  throw "Failure updating registry to indicate EULA acceptance"
}