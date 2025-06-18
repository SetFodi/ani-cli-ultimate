# 🎌 Enhanced ANI-CLI Experience ✨

<div align="center">

![ANI-CLI Enhanced](https://img.shields.io/badge/ANI--CLI-Enhanced-purple?style=for-the-badge&logo=anime&logoColor=white)
![Made by Andromeda](https://img.shields.io/badge/Enhanced%20by-Andromeda%20✨-cyan?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-blue?style=for-the-badge)

**Smooth, Animated, Fancy Menus for ANI-CLI**

*Enhanced visual experience for the popular [ani-cli](https://github.com/pystardust/ani-cli) anime streaming tool*

</div>

---

## ✨ What's Enhanced

This repository contains **enhancements to the actual ani-cli script** with smooth animations, fancy menus, and modern visual effects while maintaining 100% of the original functionality.

### 🎨 **Visual Improvements**
- **Advanced FZF styling** with double borders and enhanced color schemes
- **Loading animations** with progress indicators
- **Completion banners** with celebration effects
- **Color-coded feedback** for all user actions
- **Statistics dashboard** showing viewing progress

### 📺 **Enhanced Episode Selection**
- **Clean episode formatting**: `📺 Episode 1`, `📺 Episode 2`
- **Loading animations**: "🎬 Loading episode list..."
- **Improved navigation** with better visual feedback

### 🎮 **Post-Episode Menu**
- **Celebration banner** when episodes complete:
  ```
  ╭─────────────────────────────────────────────╮
  │            🎉 EPISODE COMPLETED! 🎉        │
  │        Episode X finished successfully     │
  │         What would you like to do next?    │
  ╰─────────────────────────────────────────────╯
  ```
- **Enhanced menu options** with descriptions:
  - `▶️ Next Episode - Continue your journey`
  - `🔄 Replay Episode - Watch again`
  - `⏮️ Previous Episode - Go back`
  - `📺 Select Episode - Choose different episode`
  - `⚙️ Change Quality - Adjust video quality`
  - `🎨 View Statistics - See your progress`
  - `🚪 Quit - Exit ANI-CLI`

### 📊 **New Features**
- **Statistics View**: Track your progress, episodes watched, completion percentage
- **Enhanced Quality Selection**: Descriptive quality options with visual feedback
- **Smooth Transitions**: Loading animations between actions

---

## 🚀 Installation

### Prerequisites
- **ani-cli** installed ([Installation Guide](https://github.com/pystardust/ani-cli))
- **fzf** for the enhanced menus

### Quick Setup
```bash
# Clone this repository
git clone https://github.com/yourusername/anicli-enhanced.git
cd anicli-enhanced

# Backup your current ani-cli
cp ~/.ani-cli/ani-cli ~/.ani-cli/ani-cli.backup

# Apply the enhancements
cp enhanced-ani-cli ~/.ani-cli/ani-cli

# Done! Your ani-cli is now enhanced
```

### Manual Installation
1. **Locate your ani-cli**: `which ani-cli`
2. **Backup original**: `cp /path/to/ani-cli /path/to/ani-cli.backup`
3. **Apply enhancements**: Copy the enhanced version from this repo

---

## 📸 Screenshots

### Enhanced Episode Selection
```
🎬 Loading episode list... ✓

┌───────────────────────────────────────| ✨ Enhanced ANI-CLI ✨ |────────────────────────────────────────┐
│                                                                                                      │
│  📺 Choose episode:                                                                                  │
│    🎌 ANI-CLI ULTIMATE - Enhanced by Andromeda ✨                                                    │
│  ❯ 📺 Episode 1                                                                                     │
│    📺 Episode 2                                                                                     │
│    📺 Episode 3                                                                                     │
│                                                                                                      │
└──────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

### Post-Episode Menu
```
╭─────────────────────────────────────────────╮
│            🎉 EPISODE COMPLETED! 🎉        │
│                                           │
│        Episode 1 finished successfully    │
│                                           │
│         What would you like to do next?    │
╰─────────────────────────────────────────────╯

🎮 Episode 1 completed! What next:
❯ ▶️  Next Episode - Continue your journey
  🔄 Replay Episode - Watch again
  ⏮️  Previous Episode - Go back
  📺 Select Episode - Choose different episode
  ⚙️  Change Quality - Adjust video quality
  🎨 View Statistics - See your progress
  🚪 Quit - Exit ANI-CLI
```

### Statistics Dashboard
```
╭─────────────────────────────────────────────╮
│            📊 VIEWING STATISTICS 📊        │
│                                           │
│  Current Anime: Death Note                │
│  Current Episode: 5                       │
│  Total Episodes: 37                       │
│  Progress: 13.5%                          │
╰─────────────────────────────────────────────╯
```

---

## 🎮 Usage

Use ani-cli exactly as before - the enhancements are seamlessly integrated:

```bash
# Search and watch anime
ani-cli "death note"
ani-cli "attack on titan"
ani-cli "demon slayer"

# All original flags work
ani-cli -q 720p "one piece"
ani-cli --dub "naruto"
ani-cli -c  # Continue from history
```

### Enhanced Features Appear Automatically:
- **Episode Selection**: Enhanced visual menus
- **Post-Episode**: Completion banners and enhanced options
- **Quality Selection**: Descriptive quality menus
- **Statistics**: View your watching progress

---

## ⚙️ Configuration

### Customization
The enhanced ani-cli respects all original environment variables:
```bash
export ANI_CLI_QUALITY="720p"      # Default quality
export ANI_CLI_PLAYER="mpv"        # Video player
export ANI_CLI_NO_DETACH=1         # Keep player attached
```

### Reverting Changes
```bash
# Restore original ani-cli
cp ~/.ani-cli/ani-cli.backup ~/.ani-cli/ani-cli
```

---

## 🛠️ Technical Details

### What's Modified
- **`launcher()` function**: Enhanced FZF styling and keybindings
- **Episode selection**: Clean formatting and loading animations
- **Post-episode menu**: Expanded options and visual feedback
- **Player integration**: Improved waiting for video completion
- **New functions**: Statistics, animations, and visual helpers

### Compatibility
- ✅ **macOS**: Full support with IINA/MPV
- ✅ **Linux**: Full support with MPV/VLC
- ✅ **Original Features**: 100% backward compatible
- ✅ **All Flags**: Every original ani-cli option works

---

## 🤝 Contributing

Feel free to contribute improvements:

1. **Fork** this repository
2. **Create** a feature branch
3. **Test** with various anime and episodes
4. **Submit** a pull request

### Ideas for Contributions
- 🎨 Additional visual themes
- 📱 Mobile terminal optimizations
- 🌍 Internationalization
- ⚡ Performance improvements

---

## 📜 Credits

### Based On
- **[ani-cli](https://github.com/pystardust/ani-cli)** by [pystardust](https://github.com/pystardust) - The amazing original anime streaming tool

### Dependencies
- **[fzf](https://github.com/junegunn/fzf)** - Fuzzy finder for enhanced menus
- **[chafa](https://hpjansson.org/chafa/)** - Terminal image viewer (for posters)

### Enhanced By
- **Andromeda ✨** - Visual enhancements and smooth animations

---

## 📄 License

This project maintains the same license as the original ani-cli (GPL-3.0).

---

## 🙏 Acknowledgments

- **pystardust** and all ani-cli contributors for the incredible foundation
- **The anime community** for inspiring beautiful tools
- **Terminal UI enthusiasts** who appreciate enhanced command-line experiences

---

<div align="center">

### 🌟 If you love this enhanced experience, please give it a star! 🌟

**Made with 🎌 for the anime community**

*Watch anime in style with Enhanced ANI-CLI* ✨

</div> 