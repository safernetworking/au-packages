import-module au

$download_host = 'https://download.spybot.info'

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -UseBasicParsing -Uri $download_host'/RegAlyzer/'
  $url = $download_page.Links | ? Href -match '.exe' | % Href | select -Last 1
  $url = $download_host + $url
  $version = (Split-Path -Path $url -Leaf) -Split '-|.exe' | Select -Last 1 -Skip 1

  @{
    URL32 = $url
    Version = $version
  }
}

update -ChecksumFor 32
