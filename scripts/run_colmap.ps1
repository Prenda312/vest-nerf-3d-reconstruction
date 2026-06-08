param(
    [Parameter(Mandatory = $true)]
    [string]$ImageDir,

    [Parameter(Mandatory = $true)]
    [string]$WorkspaceDir
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command colmap -ErrorAction SilentlyContinue)) {
    throw "COLMAP was not found. Install COLMAP and make sure it is available in PATH."
}

$database = Join-Path $WorkspaceDir "colmap.db"
$sparse = Join-Path $WorkspaceDir "sparse"
$text = Join-Path $WorkspaceDir "text"

New-Item -ItemType Directory -Force -Path $WorkspaceDir, $sparse, $text | Out-Null

colmap feature_extractor `
    --database_path $database `
    --image_path $ImageDir `
    --ImageReader.single_camera 1

colmap exhaustive_matcher `
    --database_path $database

colmap mapper `
    --database_path $database `
    --image_path $ImageDir `
    --output_path $sparse

colmap model_converter `
    --input_path (Join-Path $sparse "0") `
    --output_path $text `
    --output_type TXT

Write-Host "COLMAP reconstruction written to $WorkspaceDir"
