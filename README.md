# 🎌 ANI-CLI ULTIMATE ✨

<div align="center">

![ANI-CLI ULTIMATE Banner](https://img.shields.io/badge/ANI--CLI-ULTIMATE-purple?style=for-the-badge&logo=anime&logoColor=white)
![Made by Andromeda](https://img.shields.io/badge/Made%20by-Andromeda%20✨-cyan?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-blue?style=for-the-badge)

**Enhanced Visual Anime Streaming Experience**

*A beautiful wrapper for [ani-cli](https://github.com/pystardust/ani-cli) with stunning posters, smooth animations, and enhanced UI*

</div>

---

## ✨ Features

### 🎨 **Visual Enhancements**
- **🖼️ Beautiful Anime Posters** - High-quality posters with enhanced chafa rendering
- **🌈 Stunning Interface** - Custom colors, borders, and animations
- **⚡ Smooth Animations** - Loading spinners and transitions
- **🎭 Enhanced fzf Styling** - Custom themes and layouts

### 🚀 **Enhanced Experience**
- **📊 Anime Information** - Ratings, years, and synopsis display
- **💾 Smart Caching** - Posters cached for faster loading
- **🎮 Intuitive Controls** - Enhanced navigation and selection
- **🎌 Direct Integration** - Seamless ani-cli workflow

### 🛠️ **Technical Features**
- **Cross-platform** - Works on macOS and Linux
- **Dependency Management** - Automatic installation of requirements
- **Error Handling** - Graceful fallbacks and user feedback
- **Performance Optimized** - Fast loading and smooth operation

---

## 📸 Screenshots

### Main Interface
```
     ╔═══════════════════════════════════════════════════════════╗
     ║                 🎌 ANI-CLI ULTIMATE 🎌                   ║
     ║            ✨ Enhanced Visual Experience ✨            ║
     ╚═══════════════════════════════════════════════════════════╝

🚀 Initializing Ultimate Anime Experience...
▓▓▓ Ready!

🔍 Searching for: "death note"
Fetching anime information...

✨ Found: Death Note
⭐ Score: 8.62 | 📅 Year: 2006
```

### Poster Display
```
╭─────────────────────────────────────────────╮
│           🎌 ANIME POSTER 🎌              │
╰─────────────────────────────────────────────╯

[Beautiful ASCII art poster of Death Note characters]

╭─────────────────────────────────────────────╮
│              Made by Andromeda ✨           │
╰─────────────────────────────────────────────╯
```

### Enhanced Selection Menu
```
╭───────────────────────────────────────| ✨ Anime Paradise ✨ |───────────────────────────────────────╮
│                                                                                                      │
│  🎌 Select anime:                                                                                    │
│    🎌 ANI-CLI ULTIMATE - Enhanced by Andromeda ✨                                                    │
│  ❯ 1. Death Note (37 episodes)                                                                      │
│    2. Death Note: Rewrite (1 episodes)                                                              │
│    3. Death Note Rewrite: The Visualizing God (1 episodes)                                          │
│                                                                                                      │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────╯
```

---

## 🚀 Quick Start

### One-Line Installation
```bash
curl -sL https://raw.githubusercontent.com/yourusername/ani-cli-ultimate/main/install.sh | bash
```

### Manual Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/ani-cli-ultimate.git
cd ani-cli-ultimate

# Run the installer
chmod +x install.sh
./install.sh
```

### Usage
```bash
# Search and watch anime
ani "death note"
ani "attack on titan"
ani "demon slayer"

# Show help
ani --help
```

---

## 📋 Requirements

### Automatic Installation
The installer will automatically install all dependencies:

- **[ani-cli](https://github.com/pystardust/ani-cli)** - The core anime streaming tool
- **[jq](https://stedolan.github.io/jq/)** - JSON processor for API data
- **[fzf](https://github.com/junegunn/fzf)** - Fuzzy finder for selections
- **[chafa](https://hpjansson.org/chafa/)** - Terminal image viewer
- **curl** - For downloading posters and API calls

### Supported Platforms
- 🍎 **macOS** (via Homebrew)
- 🐧 **Linux** (Ubuntu/Debian, Arch Linux)

---

## 🎮 Controls

| Key | Action |
|-----|--------|
| `↑/↓` | Navigate options |
| `Enter` | Select anime/episode |
| `Esc` | Cancel/Exit |
| `Tab` | Multi-select (if supported) |
| `q` | Quit |

---

## 🛠️ Configuration

### Cache Directory
Posters are cached at: `~/.cache/ani-ultimate/posters/`

### Custom fzf Options
The script uses enhanced fzf styling. You can customize by modifying the `FZF_DEFAULT_OPTS` in the script.

### Poster Quality
Poster rendering can be adjusted by modifying the chafa parameters in the `display_enhanced_poster` function.

---

## 🎌 How It Works

1. **Search** - Enter anime name
2. **API Fetch** - Gets anime info from MyAnimeList API
3. **Poster Display** - Downloads and shows beautiful poster
4. **Selection** - Enhanced fzf menu for choosing anime version
5. **Streaming** - Launches ani-cli for episode selection and streaming

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Ideas for Contributions
- 🎨 New poster rendering styles
- 🌍 Additional language support
- 🎭 More animation effects
- 🔧 Performance improvements
- 📱 Mobile terminal support

---

## 🐛 Troubleshooting

### Common Issues

**Command not found: ani**
```bash
# Reload your shell configuration
source ~/.bashrc  # or ~/.zshrc
```

**Posters not displaying**
```bash
# Install chafa
brew install chafa  # macOS
sudo apt install chafa  # Ubuntu/Debian
```

**fzf styling not working**
```bash
# Update fzf to latest version
brew upgrade fzf  # macOS
```

### Getting Help
- 📖 Check the [Wiki](https://github.com/yourusername/ani-cli-ultimate/wiki)
- 🐛 Report bugs in [Issues](https://github.com/yourusername/ani-cli-ultimate/issues)
- 💬 Join discussions in [Discussions](https://github.com/yourusername/ani-cli-ultimate/discussions)

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Credits & Acknowledgments

### Primary Credits
- **[ani-cli](https://github.com/pystardust/ani-cli)** by [pystardust](https://github.com/pystardust) - The amazing core anime streaming tool that makes this all possible
- **[MyAnimeList API (Jikan)](https://jikan.moe/)** - For providing accurate anime information and posters

### Dependencies
- **[fzf](https://github.com/junegunn/fzf)** by [junegunn](https://github.com/junegunn) - Fuzzy finder
- **[chafa](https://hpjansson.org/chafa/)** by [hpjansson](https://github.com/hpjansson) - Terminal image viewer
- **[jq](https://stedolan.github.io/jq/)** by [stedolan](https://github.com/stedolan) - JSON processor

### Special Thanks
- The entire **ani-cli community** for creating such an amazing tool
- **MyAnimeList** for the comprehensive anime database
- All the **open-source contributors** who made the dependencies possible

---

## 💫 About Andromeda

**ANI-CLI ULTIMATE** is crafted with ❤️ by **Andromeda** ✨

*Bringing enhanced visual experiences to command-line tools*

<div align="center">

### 🌟 If you love this project, please give it a star! 🌟

[![GitHub stars](https://img.shields.io/github/stars/yourusername/ani-cli-ultimate?style=social)](https://github.com/yourusername/ani-cli-ultimate/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/yourusername/ani-cli-ultimate?style=social)](https://github.com/yourusername/ani-cli-ultimate/network/members)

**Made with 🎌 for the anime community**

</div>

---

<div align="center">

*Watch anime in style with ANI-CLI ULTIMATE* ✨

</div> 