# 🪟 Windows Setup Guide for Enhanced ANI-CLI ✨

<div align="center">

![Windows](https://img.shields.io/badge/Windows-PowerShell-blue?style=for-the-badge&logo=windows&logoColor=white)
![Enhanced](https://img.shields.io/badge/Enhanced-ANI--CLI-purple?style=for-the-badge)

**Complete guide for setting up Enhanced ANI-CLI on Windows with PowerShell**

</div>

---

## 🚀 Quick Start

### Step 1: Install Prerequisites

#### 1.1 Install Scoop (Package Manager)
```powershell
# Install Scoop (if not already installed)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

#### 1.2 Install ani-cli
```powershell
# Add extras bucket and install ani-cli
scoop bucket add extras
scoop install ani-cli
```

#### 1.3 Install FZF (for enhanced menus)
```powershell
# Install FZF for beautiful menus
scoop install fzf
```

#### 1.4 Install Media Player
```powershell
# Option 1: MPV (Recommended)
scoop install mpv

# Option 2: VLC
scoop install vlc
```

### Step 2: Install Enhanced ANI-CLI

#### 2.1 Clone Repository
```powershell
# Clone the enhanced ani-cli repository
git clone https://github.com/yourusername/anicli-enhanced.git
cd anicli-enhanced
```

#### 2.2 Run Installer
```powershell
# Enable script execution
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Run the installer
.\install.ps1
```

### Step 3: Enjoy! 🎉
```powershell
# Test your enhanced ani-cli
ani-cli "death note"
```

---

## 🛠️ Manual Installation

If you prefer manual installation or encounter issues:

### Find ani-cli Location
```powershell
# Find where ani-cli is installed
Get-Command ani-cli

# Example output: C:\Users\YourName\scoop\apps\ani-cli\current\ani-cli
```

### Backup Original
```powershell
# Create backup
$aniCliPath = (Get-Command ani-cli).Source
Copy-Item $aniCliPath "$aniCliPath.backup"
```

### Apply Enhancements
```powershell
# Copy enhanced version
Copy-Item "enhanced-ani-cli" $aniCliPath -Force
```

---

## ⚡ Windows Terminal Setup (Recommended)

For the best visual experience, use **Windows Terminal** with **PowerShell 7**:

### Install Windows Terminal
```powershell
# Install Windows Terminal (if not already installed)
scoop install windows-terminal
```

### Install PowerShell 7
```powershell
# Install latest PowerShell
scoop install pwsh
```

### Font Setup for Emojis
1. **Download a Nerd Font**: [Nerd Fonts](https://www.nerdfonts.com/)
2. **Install the font** (e.g., FiraCode Nerd Font)
3. **Set in Windows Terminal**:
   - Open Windows Terminal Settings
   - Go to your PowerShell profile
   - Set Font face to "FiraCode Nerd Font" or similar

---

## 🎨 Configuration Examples

### Set Default Quality
```powershell
# Add to PowerShell profile
$env:ANI_CLI_QUALITY = "720p"
```

### Set Default Player
```powershell
# Use MPV as default player
$env:ANI_CLI_PLAYER = "mpv"
```

### Add to PowerShell Profile
```powershell
# Edit your PowerShell profile
notepad $PROFILE

# Add these lines:
$env:ANI_CLI_QUALITY = "720p"
$env:ANI_CLI_PLAYER = "mpv"
```

---

## 🔧 Troubleshooting

### Common Issues

#### "ani-cli not found"
```powershell
# Check if Scoop is installed
scoop --version

# Reinstall ani-cli
scoop uninstall ani-cli
scoop install ani-cli
```

#### "Execution Policy Error"
```powershell
# Fix execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### "Permission Denied"
```powershell
# Run PowerShell as Administrator
# Right-click PowerShell -> "Run as Administrator"
```

#### "mpv/vlc not found"
```powershell
# Install media player
scoop install mpv

# Or set player manually
$env:ANI_CLI_PLAYER = "C:\path\to\your\player.exe"
```

### Performance Tips

#### Use SSD for Cache
```powershell
# Set cache to SSD location
$env:ANI_CLI_CACHE_DIR = "C:\FastDrive\ani-cli-cache"
```

#### Windows Defender Exclusions
1. Open **Windows Security**
2. Go to **Virus & threat protection**
3. Add exclusions for:
   - `%USERPROFILE%\scoop\apps\ani-cli`
   - Your anime download directory

---

## 🎮 Usage Examples

### Basic Usage
```powershell
# Search and watch
ani-cli "demon slayer"
ani-cli "attack on titan"
ani-cli "one piece"
```

### Advanced Usage
```powershell
# Specific quality
ani-cli -q 1080p "death note"

# Dubbed anime
ani-cli --dub "naruto"

# Continue from history
ani-cli -c

# Download instead of streaming
ani-cli -d "your anime"
```

---

## 📦 Alternative Installation Methods

### Without Scoop
If you don't want to use Scoop:

1. **Download ani-cli** from [GitHub](https://github.com/pystardust/ani-cli)
2. **Download FZF** from [GitHub](https://github.com/junegunn/fzf)
3. **Install MPV** from [mpv.io](https://mpv.io/installation/)
4. **Add to PATH** manually

### Using Chocolatey
```powershell
# Install via Chocolatey (alternative)
choco install mpv
# Note: ani-cli not available via Chocolatey
```

---

## 🔄 Updating

### Update Enhanced ANI-CLI
```powershell
# Pull latest changes
cd anicli-enhanced
git pull origin main

# Re-run installer
.\install.ps1 -Force
```

### Update ani-cli
```powershell
# Update base ani-cli
scoop update ani-cli

# Re-apply enhancements
.\install.ps1 -Force
```

---

## 🚪 Uninstalling

### Restore Original
```powershell
# Find ani-cli location
$aniCliPath = (Get-Command ani-cli).Source

# Restore backup
Copy-Item "$aniCliPath.backup" $aniCliPath -Force
```

### Complete Removal
```powershell
# Remove ani-cli completely
scoop uninstall ani-cli
scoop uninstall fzf
scoop uninstall mpv
```

---

## 💡 Tips for Windows Users

### Terminal Themes
- Use **Oh My Posh** for beautiful PowerShell themes
- Install via: `scoop install oh-my-posh`

### Better Experience
- **Windows Terminal** > Command Prompt
- **PowerShell 7** > Windows PowerShell 5.1
- **WSL2** for even better compatibility

### Network Issues
- Use **VPN** if anime sites are blocked
- Configure **proxy** if needed:
  ```powershell
  $env:HTTP_PROXY = "http://your-proxy:port"
  $env:HTTPS_PROXY = "http://your-proxy:port"
  ```

---

<div align="center">

**🎌 Ready to enjoy enhanced anime streaming on Windows! ✨**

Made with 💜 by Andromeda

</div> 