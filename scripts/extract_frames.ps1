param(
    [Parameter(Mandatory = $true)]
    [string]$VideoPath,

    [Parameter(Mandatory = $true)]
    [string]$OutputDir,

    [int]$Fps = 10
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
    throw "ffmpeg was not found. Install FFmpeg and make sure it is available in PATH."
}

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

ffmpeg -i $VideoPath -vf "fps=$Fps" "$OutputDir\frame_%04d.jpg"

Write-Host "Frames extracted to $OutputDir"
