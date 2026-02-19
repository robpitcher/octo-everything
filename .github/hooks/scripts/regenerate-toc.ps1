# Regenerate README TOC when Copilot edits docs
# Triggered by postToolUse hook

$ErrorActionPreference = "Stop"

try {
    $input = [Console]::In.ReadToEnd() | ConvertFrom-Json
    
    $toolName = $input.toolName
    $toolArgs = $input.toolArgs | ConvertFrom-Json
    $resultType = $input.toolResult.resultType
    
    # Only process successful edit/create operations
    if ($resultType -ne "success") {
        exit 0
    }
    
    # Check if tool was edit or create
    if ($toolName -ne "edit" -and $toolName -ne "create") {
        exit 0
    }
    
    # Extract file path from tool args
    $filePath = $toolArgs.path
    if (-not $filePath) {
        $filePath = $toolArgs.filePath
    }
    
    if (-not $filePath) {
        exit 0
    }
    
    # Check if file is in specs/, insights/, or research/
    if ($filePath -notmatch "^(specs/|insights/|research/)") {
        exit 0
    }
    
    # Check if file is markdown
    if ($filePath -notmatch "\.md$") {
        exit 0
    }
    
    # Ensure logs directory exists
    if (-not (Test-Path "logs")) {
        New-Item -ItemType Directory -Path "logs" | Out-Null
    }
    
    # Log the trigger
    $logEntry = "$(Get-Date -Format 'o') | TOC regeneration triggered by edit to: $filePath"
    Add-Content -Path "logs/docs-automation.log" -Value $logEntry
    
    # Generate the TOC sections
    $tocFile = "docs-toc.md"
    $toc = @()
    
    $toc += "## Documentation"
    $toc += ""
    
    # Specs section
    $toc += "### Specifications"
    $specFiles = Get-ChildItem -Path "specs" -Filter "*.md" -File -ErrorAction SilentlyContinue | Where-Object { $_.DirectoryName -notmatch "demoplan" }
    foreach ($file in $specFiles) {
        $title = (Get-Content $file.FullName -First 1) -replace "^# ", ""
        $relativePath = "specs/$($file.Name)"
        $toc += "- [$title]($relativePath)"
    }
    
    $toc += ""
    
    # Insights section
    $toc += "### Insights"
    $insightFiles = Get-ChildItem -Path "insights" -Filter "*.md" -File -ErrorAction SilentlyContinue
    foreach ($file in $insightFiles) {
        $title = (Get-Content $file.FullName -First 1) -replace "^# ", ""
        $relativePath = "insights/$($file.Name)"
        $toc += "- [$title]($relativePath)"
    }
    
    $toc += ""
    
    # Research section
    $toc += "### Research"
    $researchFiles = Get-ChildItem -Path "research" -Filter "*.md" -File -ErrorAction SilentlyContinue
    foreach ($file in $researchFiles) {
        $title = (Get-Content $file.FullName -First 1) -replace "^# ", ""
        $relativePath = "research/$($file.Name)"
        $toc += "- [$title]($relativePath)"
    }
    
    $toc | Set-Content -Path $tocFile
    
    Write-Host "TOC regenerated: $tocFile"
    exit 0
    
} catch {
    Write-Error $_.Exception.Message
    exit 1
}
