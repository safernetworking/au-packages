$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'regalyzer'
  fileType               = 'exe'
  url                    = 'https://download.spybot.info/RegAlyzer/regalyz-1.6.2.16.exe'
  checksum               = '64381b1f193bdef798f90dc90b6380b3d6fa5e05cb9d02e80a21003eed6b3498'
  checksumType           = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes         = @(0)
  softwareName           = 'regalyzer*'
}

Install-ChocolateyPackage @packageArgs
