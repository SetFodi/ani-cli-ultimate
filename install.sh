#!/bin/bash

# 🎌 Enhanced ANI-CLI Installer 🎌
# Enhanced by Andromeda ✨

set -euo pipefail

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
RESET='\033[0m'

# Banner
echo -e "${PURPLE}╭─────────────────────────────────────────────╮${RESET}"
echo -e "${PURPLE}│${CYAN}        🎌 Enhanced ANI Installer 🎌         ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${YELLOW}         Enhanced by Andromeda ✨           ${PURPLE}│${RESET}"
echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
echo ""

# Check if ani-cli exists for reference
if ! command -v ani-cli >/dev/null 2>&1; then
    echo -e "${RED}❌ ani-cli not found!${RESET}"
    echo -e "${YELLOW}Please install ani-cli first:${RESET}"
    echo -e "${CYAN}  https://github.com/pystardust/ani-cli${RESET}"
    exit 1
fi

# Get ani-cli location for reference
ANI_CLI_PATH=$(which ani-cli)
echo -e "${BLUE}📍 Found ani-cli at: ${CYAN}$ANI_CLI_PATH${RESET}"

# Check if enhanced-ani-cli exists
if [ ! -f "enhanced-ani-cli" ]; then
    echo -e "${RED}❌ enhanced-ani-cli not found in current directory!${RESET}"
    echo -e "${YELLOW}Please run this script from the repository directory.${RESET}"
    exit 1
fi

# Create /usr/local/bin if it doesn't exist
if [ ! -d "/usr/local/bin" ]; then
    echo -e "${CYAN}📁 Creating /usr/local/bin directory...${RESET}"
    sudo mkdir -p "/usr/local/bin"
fi

# Set target installation path for 'ani' command
TARGET_PATH="/usr/local/bin/ani"

# Confirm installation
echo -e "${YELLOW}This will install enhanced ani with:${RESET}"
echo -e "  🎌 Command shortcut: ${CYAN}ani${RESET} (instead of ani-cli)"
echo -e "  🎨 Advanced FZF styling with smooth animations"
echo -e "  📺 Enhanced episode selection menus with fancy effects"
echo -e "  🎮 Post-episode completion banners with interactive options"
echo -e "  📊 Personal anime dashboard and analytics"
echo -e "  🎬 IINA video player integration for macOS (if available)"
echo -e "  ⚡ Smooth transitions and loading effects"
echo ""

read -p "$(echo -e "${CYAN}Continue with installation? (y/N): ${RESET}")" -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Installation cancelled.${RESET}"
    exit 0
fi

echo ""
echo -e "${BLUE}🚀 Installing enhanced ani...${RESET}"

# Create backup if ani already exists
if [ -f "$TARGET_PATH" ]; then
    BACKUP_PATH="${TARGET_PATH}.backup"
    echo -e "${CYAN}📦 Creating backup...${RESET}"
    sudo cp "$TARGET_PATH" "$BACKUP_PATH"
    echo -e "${GREEN}✅ Backup created at $BACKUP_PATH${RESET}"
fi

# Install enhanced version
echo -e "${CYAN}🎌 Installing enhancements...${RESET}"
sudo cp enhanced-ani-cli "$TARGET_PATH"
sudo chmod +x "$TARGET_PATH"

echo -e "${GREEN}✅ Enhanced ani installed successfully!${RESET}"
echo ""

# Success message
echo -e "${PURPLE}╭─────────────────────────────────────────────╮${RESET}"
echo -e "${PURPLE}│${GREEN}            🎉 INSTALLATION COMPLETE! 🎉    ${PURPLE}│${RESET}"
echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
echo ""

echo -e "${CYAN}🎮 Usage:${RESET}"
echo -e "  ${GREEN}ani \"death note\"${RESET}"
echo -e "  ${GREEN}ani \"attack on titan\"${RESET}"
echo -e "  ${GREEN}ani --dashboard${RESET}"
echo ""

echo -e "${CYAN}✨ Enhanced Features:${RESET}"
echo -e "  🎌 New command: ${GREEN}ani${RESET} (shorter and unique)"
echo -e "  📺 Smooth animated episode selection"
echo -e "  🎮 Interactive post-episode menus"
echo -e "  📊 Personal anime dashboard with stats"
echo -e "  🎬 IINA player integration (macOS)"
echo -e "  ⚡ Fancy transitions and effects"
echo ""

echo -e "${CYAN}🔄 To revert:${RESET}"
echo -e "  ${YELLOW}sudo rm $TARGET_PATH${RESET}"
if [ -f "${TARGET_PATH}.backup" ]; then
    echo -e "  ${YELLOW}sudo cp ${TARGET_PATH}.backup $TARGET_PATH${RESET}"
fi
echo ""

# Check if IINA is available
if command -v iina >/dev/null 2>&1 || [ -e "/Applications/IINA.app/Contents/MacOS/iina-cli" ]; then
    echo -e "${GREEN}🎬 IINA player detected! Enhanced playback experience enabled.${RESET}"
else
    echo -e "${YELLOW}💡 For the best experience, install IINA player:${RESET}"
    echo -e "   ${CYAN}https://iina.io${RESET}"
fi

echo ""
echo -e "${PURPLE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${PURPLE}🎌 Created by Andromeda ✨ | Built upon ani-cli by pystardust${RESET}"
echo -e "${PURPLE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}" 