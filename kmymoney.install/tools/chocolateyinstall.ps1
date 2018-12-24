$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.kde.org/stable/kmymoney/4.8.2/win32/kmymoney-i686-w64-mingw32-4.8.2-4.1-setup.exe'
$url64      = 'https://download.kde.org/stable/kmymoney/4.8.2/win64/kmymoney-x86_64-w64-mingw32-4.8.2-4.1-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'kmymoney*'

  checksum      = '9d844e4fe6e9ad15a10812075483229bad585a241f3b7d9700b7458daee07d44'
  checksumType  = 'sha256'
  checksum64    = '9dcd6651b0499286cc78a5b9a5f7cc44f87e936e1070a052964ec0644e0a0489'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
