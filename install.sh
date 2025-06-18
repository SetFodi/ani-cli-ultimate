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
echo -e "${PURPLE}│${CYAN}        🎌 Enhanced ANI-CLI Installer 🎌     ${PURPLE}│${RESET}"
echo -e "${PURPLE}│${YELLOW}         Enhanced by Andromeda ✨           ${PURPLE}│${RESET}"
echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
echo ""

# Check if ani-cli exists
if ! command -v ani-cli >/dev/null 2>&1; then
    echo -e "${RED}❌ ani-cli not found!${RESET}"
    echo -e "${YELLOW}Please install ani-cli first:${RESET}"
    echo -e "${CYAN}  https://github.com/pystardust/ani-cli${RESET}"
    exit 1
fi

# Get ani-cli location
ANI_CLI_PATH=$(which ani-cli)
echo -e "${BLUE}📍 Found ani-cli at: ${CYAN}$ANI_CLI_PATH${RESET}"

# Check if enhanced-ani-cli exists
if [ ! -f "enhanced-ani-cli" ]; then
    echo -e "${RED}❌ enhanced-ani-cli not found in current directory!${RESET}"
    echo -e "${YELLOW}Please run this script from the repository directory.${RESET}"
    exit 1
fi

# Confirm installation
echo -e "${YELLOW}This will enhance your ani-cli with:${RESET}"
echo -e "  🎨 Advanced FZF styling with double borders"
echo -e "  📺 Enhanced episode selection menus"
echo -e "  🎮 Post-episode completion banners"
echo -e "  📊 Statistics dashboard"
echo -e "  ⚡ Smooth animations and loading effects"
echo ""

read -p "$(echo -e "${CYAN}Continue with installation? (y/N): ${RESET}")" -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Installation cancelled.${RESET}"
    exit 0
fi

echo ""
echo -e "${BLUE}🚀 Installing enhanced ani-cli...${RESET}"

# Create backup
BACKUP_PATH="${ANI_CLI_PATH}.backup"
if [ -f "$BACKUP_PATH" ]; then
    echo -e "${YELLOW}⚠️  Backup already exists at $BACKUP_PATH${RESET}"
else
    echo -e "${CYAN}📦 Creating backup...${RESET}"
    cp "$ANI_CLI_PATH" "$BACKUP_PATH"
    echo -e "${GREEN}✅ Backup created at $BACKUP_PATH${RESET}"
fi

# Install enhanced version
echo -e "${CYAN}🎌 Installing enhancements...${RESET}"
cp enhanced-ani-cli "$ANI_CLI_PATH"
chmod +x "$ANI_CLI_PATH"

echo -e "${GREEN}✅ Enhanced ani-cli installed successfully!${RESET}"
echo ""

# Success message
echo -e "${PURPLE}╭─────────────────────────────────────────────╮${RESET}"
echo -e "${PURPLE}│${GREEN}            🎉 INSTALLATION COMPLETE! 🎉    ${PURPLE}│${RESET}"
echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
echo ""

echo -e "${CYAN}🎮 Usage:${RESET}"
echo -e "  ${GREEN}ani-cli \"death note\"${RESET}"
echo -e "  ${GREEN}ani-cli \"attack on titan\"${RESET}"
echo ""

echo -e "${CYAN}✨ Enhanced Features:${RESET}"
echo -e "  📺 Enhanced episode selection"
echo -e "  🎮 Post-episode completion menus"
echo -e "  📊 Statistics dashboard"
echo -e "  ⚡ Smooth animations"
echo ""

echo -e "${CYAN}🔄 To revert:${RESET}"
echo -e "  ${YELLOW}cp $BACKUP_PATH $ANI_CLI_PATH${RESET}"
echo ""

echo -e "${PURPLE}Made with 🎌 by Andromeda ✨${RESET}" 