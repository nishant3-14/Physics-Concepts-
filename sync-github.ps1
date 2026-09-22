$ErrorActionPreference = "Continue"
git add -A
$changes = git status --porcelain
if ($changes) {
    git commit -m "Auto-update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git push
} else {
    Write-Host "No changes to commit."
}