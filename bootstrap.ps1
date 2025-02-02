param (
    [string]$NewName
)

if (-not $NewName) {
    Write-Host "Usage: .\bootstrap.ps1 <NewName> (e.g. .\bootstrap.ps1 MyNewProject) Note: The new name must not contain whitespace."
    exit 1
}

# Ensure no whitespace in the new name.
if ($NewName -match "\s") {
    Write-Host "Error: The new name must not contain whitespace."
    exit 1
}

# Rename occurrences in file contents.
Get-ChildItem -Recurse -File | Where-Object { $_.Name -notmatch "package.json|bootstrap.ps1|bootstrap.sh" } | ForEach-Object {
    (Get-Content $_.FullName) -replace "Template", $NewName | Set-Content $_.FullName
}

# Rename files and directories.
Get-ChildItem -Recurse -Depth 10 -Name "*Template*" | ForEach-Object {
    $newName = $_ -replace "Template", $NewName
    Rename-Item -Path $_ -NewName $newName
}

Write-Host "Renaming complete!"
