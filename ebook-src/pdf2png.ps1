<#
  Rendert elke pagina van een PDF naar een PNG, zodat een PDF op deze pc echt
  visueel te controleren is (geen poppler/pdftoppm nodig).

  Ontdekt 2026-07-26: Windows heeft de WinRT-API Windows.Data.Pdf ingebouwd,
  bereikbaar vanuit PowerShell. Tot dan toe was er GEEN manier op deze pc om een
  PDF te bekijken zonder 'm te openen in een los programma (zie de notitie
  hierover bij de eerdere PDF-tooling, 2026-07-13: alleen Edge print-to-pdf en
  PowerShell/.NET voor raw-PDF-schrijven waren bekend). Gebruik dit script na
  elke handmatige PDF-wijziging (zie patch-veiligheidsplan-invulbaar.ps1) om het
  resultaat te lezen met het Read-tool, in plaats van blind te vertrouwen op de
  bytes.

  Gebruik:
    powershell -File pdf2png.ps1 -PdfPath ..\downloads\bestand.pdf -OutDir <map>
#>
param(
  [Parameter(Mandatory=$true)][string]$PdfPath,
  [Parameter(Mandatory=$true)][string]$OutDir,
  [int]$Scale = 2
)

Add-Type -AssemblyName System.Runtime.WindowsRuntime

Function AwaitValue($WinRtTask, $ResultType) {
  $asTask = ([System.WindowsRuntimeSystemExtensions].GetMethods() | Where-Object {
    $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncOperation`1'
  })[0]
  $asTaskGeneric = $asTask.MakeGenericMethod($ResultType)
  $task = $asTaskGeneric.Invoke($null, @($WinRtTask))
  $task.Wait() | Out-Null
  return $task.Result
}

Function AwaitAction($WinRtAction) {
  $asTask = ([System.WindowsRuntimeSystemExtensions].GetMethods() | Where-Object {
    $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncAction'
  })[0]
  $task = $asTask.Invoke($null, @($WinRtAction))
  $task.Wait() | Out-Null
}

[Windows.Data.Pdf.PdfDocument,Windows.Data.Pdf,ContentType=WindowsRuntime] | Out-Null
[Windows.Storage.StorageFile,Windows.Storage,ContentType=WindowsRuntime] | Out-Null
[Windows.Storage.Streams.DataReader,Windows.Storage.Streams,ContentType=WindowsRuntime] | Out-Null
[Windows.Storage.Streams.InMemoryRandomAccessStream,Windows.Storage.Streams,ContentType=WindowsRuntime] | Out-Null

if (-not (Test-Path $OutDir)) { New-Item -ItemType Directory -Path $OutDir -Force | Out-Null }

$full = (Resolve-Path $PdfPath).Path
$file = AwaitValue ([Windows.Storage.StorageFile]::GetFileFromPathAsync($full)) ([Windows.Storage.StorageFile])
$doc = AwaitValue ([Windows.Data.Pdf.PdfDocument]::LoadFromFileAsync($file)) ([Windows.Data.Pdf.PdfDocument])

Write-Host "Pagina's: $($doc.PageCount)"

for ($i = 0; $i -lt $doc.PageCount; $i++) {
  $page = $doc.GetPage([uint32]$i)
  $outPath = Join-Path $OutDir ("pagina-{0}.png" -f ($i + 1))
  $stream = New-Object Windows.Storage.Streams.InMemoryRandomAccessStream
  $opts = New-Object Windows.Data.Pdf.PdfPageRenderOptions
  $opts.DestinationWidth = [uint32]($page.Size.Width * $Scale)
  $opts.DestinationHeight = [uint32]($page.Size.Height * $Scale)
  AwaitAction ($page.RenderToStreamAsync($stream, $opts))

  $reader = New-Object Windows.Storage.Streams.DataReader($stream.GetInputStreamAt(0))
  AwaitValue ($reader.LoadAsync([uint32]$stream.Size)) ([uint32]) | Out-Null
  $bytes = New-Object byte[] ([int]$stream.Size)
  $reader.ReadBytes($bytes)
  [System.IO.File]::WriteAllBytes($outPath, $bytes)

  $reader.Dispose()
  $stream.Dispose()
  $page.Dispose()
  Write-Host "geschreven: $outPath"
}
