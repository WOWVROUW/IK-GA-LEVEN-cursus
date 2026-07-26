<#
  Voegt het telefoon/simkaart-vinkje toe als EERSTE item van hoofdstuk 7
  "Digitale veiligheid" in het invulbare veiligheidsplan-PDF.

  WAAROM DIT SCRIPT BESTAAT: het invulbare PDF (downloads/veiligheidsplan-invulbaar.pdf)
  is een met de hand geschreven AcroForm-PDF (66 losse tekstvak-velden als "vinkjes" en
  invulregels, geen compressie, geen bibliotheek). Het originele bouwscript van 2026-07-13
  is niet bewaard gebleven op deze pc. In plaats van het bestand blind te patchen, leest
  dit script het BESTAANDE PDF in, past alleen wat nodig is aan, en herbouwt de hele
  cross-reference-tabel. Zo blijft het bestand geldig en is elke toekomstige wijziging
  herhaalbaar in plaats van weer een eenmalige handpatch.

  Hoe het werkt (2026-07-26):
  - Hoofdstuk 7 stond op pagina 3 (content-object 7) met 5 vinkjes (velden f52-f56,
    objecten 64-68) en 5 tekstregels op y = 523.5 .. 455.5 (regelhoogte 17pt).
  - Het nieuwe item is te lang voor 1 regel en breekt over 2 regels (gemeten met
    System.Drawing/Arial als metrisch equivalent van Helvetica, binnen de kolombreedte
    75-540pt). Dat schuift dus ALLES eronder op de pagina 34pt (2 regels) naar beneden:
    de overige 5 items van hoofdstuk 7, en de hoofdstukken 8, 9 en 10 met hun
    invulvakken. Voor Advocaat: (nu onderaan de pagina) blijft ruim marge over (var
    y=56, tegen de gebruikelijke ondermarge van ~55-80pt op de andere pagina's).
  - Er komt 1 nieuw checkbox-veld bij (object 79, veld f67) op de plek waar het eerste
    vinkje eerst stond; de 5 bestaande vinkjes (objecten 64-68) schuiven met hun tekst
    mee (-34pt). Nieuw veld toegevoegd aan het /Fields-array (object 1) en aan het
    /Annots-array van de pagina (object 11).
  - Gecontroleerd met scratchpad/pdf2png.ps1 (Windows.Data.Pdf WinRT-rendering, werkt
    op deze pc en is de eerste keer dat een PDF hier echt visueel te controleren was).
#>

param(
  [string]$InPath = "$PSScriptRoot\..\downloads\veiligheidsplan-invulbaar.pdf",
  [string]$OutPath = "$PSScriptRoot\..\downloads\veiligheidsplan-invulbaar.pdf"
)

$ErrorActionPreference = 'Stop'
$enc = [System.Text.Encoding]::GetEncoding(28591)   # Latin-1: 1 teken = 1 byte, precies wat een PDF nodig heeft

$bytes = [System.IO.File]::ReadAllBytes($InPath)
$raw = $enc.GetString($bytes)

# ---- 1. Alle objecten inlezen in een dictionary { nummer -> body-tekst (zonder "N 0 obj"/"endobj") } ----
# (Generic Dictionary i.p.v. [ordered]@{}: met integer keys behandelt PowerShell's
# OrderedDictionary-indexer een geheel getal als positie-index, niet als sleutel.)
$objects = New-Object 'System.Collections.Generic.Dictionary[int,string]'
$objRegex = [regex]::new('(?ms)^(\d+) 0 obj\r?\n(.*?)\r?\nendobj')
foreach ($m in $objRegex.Matches($raw)) {
  $objects[[int]$m.Groups[1].Value] = $m.Groups[2].Value
}
if ($objects.Count -ne 78) { throw "Verwachtte 78 objecten, vond $($objects.Count). Bestand is anders dan verwacht, script stopt." }

# ---- 2. Object 1 (Catalog): nieuw veld 79 toevoegen aan /Fields ----
$objects[1] = $objects[1] -replace '78 0 R \]', '78 0 R 79 0 R ]'

# ---- 3. Object 11 (pagina 3): nieuw veld 79 toevoegen aan /Annots ----
$objects[11] = $objects[11] -replace '73 0 R \]', '73 0 R 79 0 R ]'

# ---- 4. Object 7 (content-stream pagina 3): item-lijst van hoofdstuk 7 vervangen + alles
#         eronder 34pt (2 regels) naar beneden schuiven ----
$oud7 = $objects[7]
$streamMatch = [regex]::Match($oud7, '(?ms)^<< /Length (\d+) >>\r?\nstream\r?\n(.*)$')
if (-not $streamMatch.Success) { throw "Kon de stream van object 7 niet vinden." }
$streamBody = $streamMatch.Groups[2].Value

$ankerRegex = [regex]::new('(?ms)BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 523\.5 Tm.*$')
if (-not $ankerRegex.IsMatch($streamBody)) { throw "Anker (eerste vinkje-regel) niet gevonden in object 7." }

$nieuwBlok = @'
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 523.5 Tm (Koop zo mogelijk een nieuw telefoontoestel en regel een nieuwe simkaart bij een lokale winkel.) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 506.5 Tm (Vraag of zij de oude telefoon kunnen controleren op spyware.) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 489.5 Tm (Locatiedeling uitzetten \(Zoek mijn iPhone, Google, gedeelde agenda, gezinsdeling\)) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 472.5 Tm (Wachtwoorden wijzigen \(mail, bank, sociale media\) en tweestapsverificatie aan) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 455.5 Tm (Gedeelde accounts en abonnementen nalopen \(streaming, cloud, gezinsabonnement\)) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 438.5 Tm (Letten op een volgsysteem in de auto of een verstopte tracker \(AirTag\)) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 75 421.5 Tm (Veilig Thuis bellen of chatten vanaf een telefoon die de ander niet kan inzien) Tj ET
BT /F2 14 Tf 0.420 0.098 0.325 rg 1 0 0 1 55 394.5 Tm (8. Alcohol en medicijnen) Tj ET
0.420 0.098 0.325 RG 0.6 w 55 388.5 m 540 388.5 l S
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 376.5 Tm (Alcohol of kalmerende middelen kunnen je alertheid en reactievermogen verlagen, juist) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 363 Tm (als je die het hardst nodig hebt. Geen oordeel, alleen iets om mee te wegen.) Tj ET
BT /F2 14 Tf 0.420 0.098 0.325 rg 1 0 0 1 55 339.5 Tm (9. Emotionele veerkracht) Tj ET
0.420 0.098 0.325 RG 0.6 w 55 333.5 m 540 333.5 l S
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 321.5 Tm (Bij eenzaamheid of druk vanuit de ander, zelfzorg door:) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 269 Tm (Bij noodzakelijk contact met de ander, voorbereiden door:) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 216.5 Tm (Voor moeilijke momenten \(zitting, gesprek met advocaat\), voorbereiden door:) Tj ET
BT /F2 14 Tf 0.420 0.098 0.325 rg 1 0 0 1 55 154 Tm (10. Belangrijke nummers) Tj ET
0.420 0.098 0.325 RG 0.6 w 55 148 m 540 148 l S
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 136 Tm (Direct gevaar: 112   |   Veilig Thuis: 0800-2000   |   Politie geen spoed: 0900-8844) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 122.5 Tm (Meld Misdaad Anoniem: 0800-7000   |   Juridisch Loket: 0800-8020) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 109 Tm (Slachtofferhulp: 0900-0101   |   Centrum Seksueel Geweld: 0800-0188   |   Kindertelefoon: 0800-0432) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 91.5 Tm (Persoonlijke nummers \(bewaar verborgen maar bereikbaar, of leer ze uit je hoofd\):) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 78 Tm (Politie / wijkagent:) Tj ET
BT /F1 10 Tf 0 0 0 rg 1 0 0 1 55 56 Tm (Advocaat:) Tj ET
'@
$nieuwBlok = $nieuwBlok -replace "`r`n", "`n"

$nieuweStreamBody = $ankerRegex.Replace($streamBody, [System.Text.RegularExpressions.MatchEvaluator]{ param($m) $nieuwBlok })
# de laatste regel van het originele blok had geen trailing newline; de vervanging hierboven eindigt er wel een op,
# gelijk aan het patroon in de rest van het bestand (elke stream eindigt met een lege regel voor "endstream").
$nieuweLengte = $enc.GetByteCount($nieuweStreamBody)
$objects[7] = "<< /Length $nieuweLengte >>`nstream`n$nieuweStreamBody`nendstream"

# ---- 5. Vinkjes van hoofdstuk 7 (objecten 64-68) en de invulvakken/velden erna (69-73): -34pt ----
Function ShiftRectY($body, $dy) {
  return [regex]::Replace($body, '/Rect \[ ([\d.]+) ([\d.]+) ([\d.]+) ([\d.]+) \]', {
    param($m)
    $x1 = $m.Groups[1].Value; $y1 = [double]$m.Groups[2].Value
    $x2 = $m.Groups[3].Value; $y2 = [double]$m.Groups[4].Value
    "/Rect [ $x1 $([math]::Round($y1+$dy,2)) $x2 $([math]::Round($y2+$dy,2)) ]"
  })
}
foreach ($n in 64..73) {
  $objects[$n] = ShiftRectY $objects[$n] (-34)
}

# ---- 6. Nieuw vinkje-object 79 (f67), op de plek waar het eerste vinkje eerst stond ----
$objects[79] = '<< /Type /Annot /Subtype /Widget /FT /Tx /T (f67) /Rect [ 55 512.5 68 525.5 ] /F 4 /DA (/F1 10 Tf 0 g) /MK << /BC [ 0.80 0.80 0.80 ] >> /BS << /W 1 /S /S >> >>'

# ---- 7. Bestand herbouwen: header, objecten 1..79 op volgorde, xref, trailer ----
$sb = New-Object System.Text.StringBuilder
[void]$sb.Append("%PDF-1.5`n%")
[void]$sb.Append([char]0xE2).Append([char]0xE3).Append([char]0xCF).Append([char]0xD3)
[void]$sb.Append("`n")

$offsets = @{}
foreach ($n in 1..79) {
  $offsets[$n] = $enc.GetByteCount($sb.ToString())
  [void]$sb.Append("$n 0 obj`n").Append($objects[$n]).Append("`nendobj`n")
}

$xrefOffset = $enc.GetByteCount($sb.ToString())
[void]$sb.Append("xref`n0 80`n")
[void]$sb.Append("0000000000 65535 f `n")
for ($n = 1; $n -le 79; $n++) {
  [void]$sb.Append('{0:D10} 00000 n ' -f $offsets[$n]).Append("`n")
}
[void]$sb.Append("trailer`n<< /Size 80 /Root 1 0 R >>`nstartxref`n$xrefOffset`n%%EOF")

$outBytes = $enc.GetBytes($sb.ToString())
[System.IO.File]::WriteAllBytes($OutPath, $outBytes)
"Geschreven: $OutPath ($($outBytes.Length) bytes, was $($bytes.Length) bytes)"
