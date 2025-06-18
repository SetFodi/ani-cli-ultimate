# 🎌 Enhanced ANI-CLI Installer for Windows 🎌
# Enhanced by Andromeda ✨

param(
    [switch]$Force
)

# Enable UTF-8 encoding for proper emoji display
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Colors for PowerShell
$Colors = @{
    Green   = [char]27 + "[32m"
    Yellow  = [char]27 + "[33m"
    Blue    = [char]27 + "[34m"
    Purple  = [char]27 + "[35m"
    Cyan    = [char]27 + "[36m"
    Red     = [char]27 + "[31m"
    Reset   = [char]27 + "[0m"
}

# Function to write colored text
function Write-Color {
    param($Text, $Color = "Reset")
    Write-Host "$($Colors[$Color])$Text$($Colors.Reset)"
}

# Banner
Write-Color "╭─────────────────────────────────────────────╮" "Purple"
Write-Color "│        🎌 Enhanced ANI-CLI Installer 🎌     │" "Purple"
Write-Color "│         Enhanced by Andromeda ✨           │" "Purple"
Write-Color "╰─────────────────────────────────────────────╯" "Purple"
Write-Host ""

# Check if ani-cli exists
try {
    $aniCliPath = (Get-Command ani-cli -ErrorAction Stop).Source
    Write-Color "📍 Found ani-cli at: $aniCliPath" "Blue"
} catch {
    Write-Color "❌ ani-cli not found!" "Red"
    Write-Color "Please install ani-cli first." "Yellow"
    Write-Color "" "Reset"
    Write-Color "Installation options:" "Cyan"
    Write-Color "1. Install via Scoop:" "Yellow"
    Write-Color "   scoop bucket add extras" "Cyan"
    Write-Color "   scoop install ani-cli" "Cyan"
    Write-Color "" "Reset"
    Write-Color "2. Or download from: https://github.com/pystardust/ani-cli" "Yellow"
    exit 1
}

# Check if enhanced-ani-cli exists
if (-not (Test-Path "enhanced-ani-cli")) {
    Write-Color "❌ enhanced-ani-cli not found in current directory!" "Red"
    Write-Color "Please run this script from the repository directory." "Yellow"
    exit 1
}

# Show what will be enhanced
Write-Color "This will enhance your ani-cli with:" "Yellow"
Write-Host "  🎨 Advanced FZF styling with double borders"
Write-Host "  📺 Enhanced episode selection menus"
Write-Host "  🎮 Post-episode completion banners"
Write-Host "  📊 Statistics dashboard"
Write-Host "  ⚡ Smooth animations and loading effects"
Write-Host ""

# Confirm installation
if (-not $Force) {
    $confirmation = Read-Host "$(Write-Color "Continue with installation? (y/N): " "Cyan" -NoNewline)"
    if ($confirmation -notmatch "^[Yy]$") {
        Write-Color "Installation cancelled." "Yellow"
        exit 0
    }
}

Write-Host ""
Write-Color "🚀 Installing enhanced ani-cli..." "Blue"

# Create backup
$backupPath = "$aniCliPath.backup"
if (Test-Path $backupPath) {
    Write-Color "⚠️  Backup already exists at $backupPath" "Yellow"
} else {
    Write-Color "📦 Creating backup..." "Cyan"
    Copy-Item $aniCliPath $backupPath -Force
    Write-Color "✅ Backup created at $backupPath" "Green"
}

# Install enhanced version
Write-Color "🎌 Installing enhancements..." "Cyan"
try {
    Copy-Item "enhanced-ani-cli" $aniCliPath -Force
    Write-Color "✅ Enhanced ani-cli installed successfully!" "Green"
} catch {
    Write-Color "❌ Failed to install enhanced version: $_" "Red"
    Write-Color "You may need to run PowerShell as Administrator." "Yellow"
    exit 1
}

Write-Host ""

# Success message
Write-Color "╭─────────────────────────────────────────────╮" "Purple"
Write-Color "│            🎉 INSTALLATION COMPLETE! 🎉    │" "Purple"
Write-Color "╰─────────────────────────────────────────────╯" "Purple"
Write-Host ""

Write-Color "🎮 Usage:" "Cyan"
Write-Color "  ani-cli `"death note`"" "Green"
Write-Color "  ani-cli `"attack on titan`"" "Green"
Write-Host ""

Write-Color "✨ Enhanced Features:" "Cyan"
Write-Host "  📺 Enhanced episode selection"
Write-Host "  🎮 Post-episode completion menus"
Write-Host "  📊 Statistics dashboard"
Write-Host "  ⚡ Smooth animations"
Write-Host ""

Write-Color "🔄 To revert:" "Cyan"
Write-Color "  Copy-Item `"$backupPath`" `"$aniCliPath`" -Force" "Yellow"
Write-Host ""

Write-Color "Made with 🎌 by Andromeda ✨" "Purple"

# Note about dependencies
Write-Host ""
Write-Color "📝 Note for Windows users:" "Cyan"
Write-Host "  • Make sure you have FZF installed for the best experience"
Write-Host "  • Install via Scoop: scoop install fzf"
Write-Host "  • Or download from: https://github.com/junegunn/fzf" 