# 🎌 ANI Enhanced - Ultimate Anime Experience ✨

> **Revolutionary anime CLI with smooth animations, IINA integration, anime posters, and advanced personal tracking**

ANI Enhanced transforms the anime watching experience with cutting-edge UI animations, intelligent player detection, anime poster display, and comprehensive anime management features that go far beyond basic video playback.

## 🚀 Quick Installation

```bash
git clone https://github.com/yourusername/anicli
cd anicli
chmod +x install.sh
./install.sh
```

**New Command:** Use `ani` instead of `ani-cli` to avoid conflicts!

## ✨ Revolutionary Features

### 🎬 **Smart Player Integration**
- **IINA Priority**: Automatically detects and prioritizes IINA on macOS for superior video quality
- **Hardware Acceleration**: 4K/8K support with 50% lower power consumption  
- **Native macOS Integration**: Touch Bar support, Picture-in-Picture mode
- **Automatic Installation Guidance**: Suggests IINA installation if not detected

### 🎨 **Anime Poster Display**
- **Visual Anime Selection**: Shows anime posters when selecting series
- **Chafa Integration**: High-quality image display in terminal (if available)
- **Fallback ASCII Art**: Beautiful ASCII posters when image display unavailable
- **Cached Posters**: Smart caching system for faster loading

### ⚡ **Ultra-Smooth Animations**
- **🎭 Animated startup banner** with typewriter effects
- **⚡ Fixed spinner animations** (no more terminated processes!)
- **🌈 Glassmorphism design** with modern color schemes
- **📊 Progress bars** for episode tracking
- **🎭 Smooth transitions** between all menu states
- **⌨️ Single-key controls** (n/r/p/s/c/f/w/l/o/d/q) for lightning-fast navigation

### 📊 **Personal Anime Dashboard**
- **📈 Comprehensive Analytics**: View your watching statistics and completion percentages
- **⏰ Watch History**: Track recently watched episodes with timestamps
- **🎯 Personal Goals**: Set and track anime watching milestones
- **📊 Visual Progress**: Beautiful progress bars and completion metrics

### 📋 **Advanced Watchlist Management**
- **📝 Multiple Status Types**: watching, completed, on-hold, dropped
- **⏰ Timestamped Entries**: Track when you added or updated anime
- **🔄 Status Updates**: Easy status changes with visual indicators
- **📊 Progress Tracking**: Monitor your completion progress

### ❤️ **Favorites & Rating System**
- **⭐ 5-Star Rating System**: Rate your favorite anime
- **❤️ Personal Library**: Curated collection of your top anime
- **🏆 Top Rated Display**: View your highest-rated series
- **📅 Date Tracking**: See when you favorited each anime

### ⏰ **Watch Later Queue**
- **📌 Episode Bookmarking**: Save specific episodes for later viewing
- **🔄 Queue Management**: Organize your future watching schedule
- **⏱️ Timestamped Saves**: Track when episodes were added to queue

### 📝 **Episode Notes System**
- **💭 Personal Notes**: Add thoughts and reviews for specific episodes
- **⏰ Timestamp Tracking**: Notes include viewing date and time
- **🔍 Easy Access**: Quick note viewing and editing

### 🎮 **Enhanced Post-Episode Menu**
- **🎉 Celebration Animations**: Beautiful completion banners
- **⚡ Lightning Fast Controls**: Single-key navigation (n/r/p/s/c/f/w/l/o/d/q)
- **🎨 Interactive Elements**: Smooth transitions and visual feedback
- **📊 Integrated Dashboard**: Access all features from one menu

## 🎯 **Why ANI Enhanced?**

Unlike basic ani-cli forks that only change colors, ANI Enhanced provides:

- **🚫 No Conflicts**: Uses `ani` command instead of overwriting `ani-cli`
- **🎬 Superior Video Quality**: IINA integration with hardware acceleration
- **🖼️ Visual Experience**: Anime posters and modern UI design
- **📊 Data Persistence**: All your preferences and progress saved locally
- **⚡ Performance Optimized**: Faster loading, smoother animations
- **🎨 Professional UI**: Glassmorphism design with smooth transitions

## 📦 Requirements

- **macOS**: 10.13+ (optimized for latest versions)
- **Bash**: 4.0+
- **ani-cli**: Original ani-cli installed
- **Optional**: IINA player (automatically suggested)
- **Optional**: chafa (for image display)

## 🎮 Quick Start

```bash
# Basic usage
ani "death note"
ani "attack on titan"

# Advanced features
ani --dashboard      # View your anime statistics
ani --watchlist      # Manage your watchlist
ani --favorites      # View favorite anime
ani --later         # Check watch later queue

# Continue watching
ani -c              # Continue from history
```

## ⚙️ Configuration

All data is stored in `~/.local/state/ani-cli/`:
- `watchlist` - Your anime watchlist with status
- `favorites` - Favorited anime with ratings
- `watch_later` - Episodes saved for later
- `notes/` - Directory containing episode notes
- `posters/` - Cached anime posters

## 🎨 Player Integration

### IINA (Recommended for macOS)
```bash
# Install via Homebrew
brew install --cask iina

# Or download from
# https://iina.io/
```

**IINA Benefits:**
- ⚡ Hardware-accelerated 4K/8K playback
- 🎨 Native macOS design & Touch Bar support
- 💫 Advanced subtitle rendering
- 🔋 50% lower power consumption than MPV
- 🎭 Picture-in-Picture mode

## 🛠️ Troubleshooting

### Syntax Errors Fixed ✅
- Fixed terminated spinner processes
- Resolved missing case statements
- Corrected animation loops

### Player Issues
```bash
# If video doesn't play, check player
ani --help | grep -i player

# Install IINA for best experience
brew install --cask iina
```

### Performance
- Anime posters cached automatically
- Loading animations optimized
- No background processes hanging

## 🔄 Uninstallation

```bash
# Remove enhanced ani
sudo rm /usr/local/bin/ani

# Restore original (if backed up)
sudo cp /usr/local/bin/ani.backup /usr/local/bin/ani
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

MIT License - feel free to modify and distribute

## 🙏 Credits

**🎌 Created by Andromeda ✨**
- Enhanced UI animations and modern design
- IINA integration and macOS optimization
- Personal tracking system and dashboard
- Anime poster display functionality

**🏗️ Built upon ani-cli by pystardust**
- Original project: [ani-cli](https://github.com/pystardust/ani-cli)
- Core anime streaming functionality
- Provider integration and parsing

## 🌟 Star History

If you enjoy ANI Enhanced, please give it a star! ⭐

---

> **Note**: This is an enhanced version built upon the amazing work of the original ani-cli team. We've added extensive new features while maintaining full compatibility with the original functionality. 