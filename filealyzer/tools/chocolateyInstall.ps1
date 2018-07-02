$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'filealyzer'
  fileType               = 'exe'
  url                    = 'https://download.spybot.info/FileAlyzer/filealyz-2.0.5.57.exe'
  checksum               = 'fadb69fbd21b9d7468329db94cbf025845a68e284214ecc1c713cd56828fbfef'
  checksumType           = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes         = @(0)
  softwareName           = 'filealyzer*'
}

Install-ChocolateyPackage @packageArgs
