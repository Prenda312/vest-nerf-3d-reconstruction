param(
    [Parameter(Mandatory = $true)]
    [string]$InstantNgpExe,

    [Parameter(Mandatory = $true)]
    [string]$TransformsJson,

    [string]$SnapshotPath = "base.ingp"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $InstantNgpExe)) {
    throw "Instant-NGP executable was not found: $InstantNgpExe"
}

if (-not (Test-Path -LiteralPath $TransformsJson)) {
    throw "Transforms file was not found: $TransformsJson"
}

& $InstantNgpExe --scene $TransformsJson --save_snapshot $SnapshotPath

Write-Host "Instant-NGP snapshot saved to $SnapshotPath"
