#!/bin/bash

# 🎌 Enhanced ANI-CLI Installer 🎌
# Enhanced by Andromeda ✨

set -euo pipefail

# Colors and styling
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'

# Configuration
REPO_NAME="anicli-enhanced"
VERSION="2.0.0"
INSTALL_DIR="/usr/local/bin"
BACKUP_SUFFIX=".backup.$(date +%Y%m%d_%H%M%S)"

# Enhanced banner with version info
print_banner() {
    clear
    echo -e "${PURPLE}╭─────────────────────────────────────────────╮${RESET}"
    echo -e "${PURPLE}│${CYAN}${BOLD}       🎌 Enhanced ANI Installer 🎌        ${PURPLE}│${RESET}"
    echo -e "${PURPLE}│${YELLOW}        Enhanced by Andromeda ✨ v$VERSION       ${PURPLE}│${RESET}"
    echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
    echo ""
}

# Progress indicator
show_progress() {
    local current=$1
    local total=$2
    local message=$3
    local percentage=$((current * 100 / total))
    local filled=$((current * 20 / total))
    
    printf "\r${CYAN}[${RESET}"
    for i in $(seq 1 $filled); do printf "█"; done
    for i in $(seq $((filled + 1)) 20); do printf "░"; done
    printf "${CYAN}] %d%% %s${RESET}" "$percentage" "$message"
    
    [ "$current" -eq "$total" ] && printf "\n"
}

# Check dependencies and provide installation guidance
check_dependencies() {
    echo -e "${CYAN}🔍 Checking system requirements...${RESET}"
    
    local missing_deps=()
    local optional_deps=()
    
    # Required dependencies
    for dep in "curl" "fzf" "grep" "sed"; do
        if ! command -v "$dep" >/dev/null 2>&1; then
            missing_deps+=("$dep")
        fi
    done
    
    # Optional but recommended
    for dep in "jq" "chafa" "mpv" "iina"; do
        if ! command -v "$dep" >/dev/null 2>&1; then
            optional_deps+=("$dep")
        fi
    done
    
    # Report required dependencies
    if [ ${#missing_deps[@]} -gt 0 ]; then
        echo -e "${RED}${BOLD}❌ Missing required dependencies:${RESET}"
        for dep in "${missing_deps[@]}"; do
            echo -e "  ${YELLOW}• $dep${RESET}"
        done
        echo ""
        echo -e "${CYAN}${BOLD}Installation commands:${RESET}"
        
        # Detect OS and provide specific commands
        if [[ "$OSTYPE" == "darwin"* ]]; then
            echo -e "${GREEN}  brew install ${missing_deps[*]}${RESET}"
        elif command -v apt >/dev/null 2>&1; then
            echo -e "${GREEN}  sudo apt update && sudo apt install ${missing_deps[*]}${RESET}"
        elif command -v pacman >/dev/null 2>&1; then
            echo -e "${GREEN}  sudo pacman -S ${missing_deps[*]}${RESET}"
        elif command -v dnf >/dev/null 2>&1; then
            echo -e "${GREEN}  sudo dnf install ${missing_deps[*]}${RESET}"
        fi
        
        echo -e "\n${RED}Please install required dependencies and try again.${RESET}"
        exit 1
    fi
    
    echo -e "${GREEN}✅ All required dependencies found${RESET}"
    
    # Suggest optional dependencies
    if [ ${#optional_deps[@]} -gt 0 ]; then
        echo -e "\n${YELLOW}💡 Optional enhancements available:${RESET}"
        for dep in "${optional_deps[@]}"; do
            case "$dep" in
                "jq") echo -e "  ${DIM}• $dep - Better JSON parsing for anime info${RESET}" ;;
                "chafa") echo -e "  ${DIM}• $dep - Display anime posters in terminal${RESET}" ;;
                "mpv") echo -e "  ${DIM}• $dep - High-performance video player${RESET}" ;;
                "iina") echo -e "  ${DIM}• $dep - Premium macOS video player${RESET}" ;;
                *) echo -e "  ${DIM}• $dep - Enhanced functionality${RESET}" ;;
            esac
        done
        echo ""
    fi
}

# Check if we're in the right directory
check_installation_files() {
    echo -e "${CYAN}📁 Verifying installation files...${RESET}"
    
    if [ ! -f "enhanced-ani-cli" ]; then
        echo -e "${RED}❌ enhanced-ani-cli not found in current directory!${RESET}"
        echo -e "${YELLOW}Please run this script from the repository directory.${RESET}"
        exit 1
    fi
    
    if [ ! -f "ani-ultimate" ]; then
        echo -e "${YELLOW}⚠️  ani-ultimate not found, continuing without demo mode${RESET}"
    fi
    
    echo -e "${GREEN}✅ Installation files verified${RESET}"
}

# Enhanced installation process
install_enhanced_ani() {
    echo -e "\n${BLUE}${BOLD}🚀 Installing Enhanced ANI CLI...${RESET}"
    
    # Create installation directory if needed
    if [ ! -d "$INSTALL_DIR" ]; then
        echo -e "${CYAN}📁 Creating installation directory...${RESET}"
        sudo mkdir -p "$INSTALL_DIR"
    fi
    
    local target_path="$INSTALL_DIR/ani"
    
    # Create backup if file exists
    if [ -f "$target_path" ]; then
        local backup_path="${target_path}${BACKUP_SUFFIX}"
        echo -e "${CYAN}📦 Creating backup...${RESET}"
        sudo cp "$target_path" "$backup_path"
        echo -e "${GREEN}✅ Backup created: $backup_path${RESET}"
    fi
    
    # Install main script with progress
    show_progress 1 3 "Installing main script"
    sudo cp enhanced-ani-cli "$target_path"
    sudo chmod +x "$target_path"
    
    # Install demo script if available
    show_progress 2 3 "Installing demo features"
    if [ -f "ani-ultimate" ]; then
        sudo cp ani-ultimate "$INSTALL_DIR/ani-demo"
        sudo chmod +x "$INSTALL_DIR/ani-demo"
    fi
    
    # Set up completion and configuration
    show_progress 3 3 "Finalizing installation"
    
    # Create state directories for user
    local state_dir="${XDG_STATE_HOME:-$HOME/.local/state}/ani-cli"
    mkdir -p "$state_dir/notes"
    mkdir -p "$state_dir/cache/posters"
    
    echo -e "${GREEN}✅ Enhanced ANI CLI installed successfully!${RESET}"
}

# Post-installation setup and guidance
post_install_setup() {
    echo -e "\n${PURPLE}╭─────────────────────────────────────────────╮${RESET}"
    echo -e "${PURPLE}│${GREEN}${BOLD}           🎉 INSTALLATION COMPLETE! 🎉     ${PURPLE}│${RESET}"
    echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
    
    echo -e "\n${CYAN}${BOLD}🎮 Quick Start Guide:${RESET}"
    echo -e "  ${GREEN}ani \"death note\"${RESET}      ${DIM}# Watch anime${RESET}"
    echo -e "  ${GREEN}ani --dashboard${RESET}       ${DIM}# View your stats${RESET}"
    echo -e "  ${GREEN}ani --watchlist${RESET}       ${DIM}# Manage watchlist${RESET}"
    echo -e "  ${GREEN}ani --favorites${RESET}       ${DIM}# View favorites${RESET}"
    echo -e "  ${GREEN}ani --help${RESET}            ${DIM}# Show all options${RESET}"
    
    echo -e "\n${CYAN}${BOLD}✨ Enhanced Features:${RESET}"
    echo -e "  🎌 ${GREEN}Command: 'ani'${RESET} ${DIM}(shorter and unique)${RESET}"
    echo -e "  📺 ${GREEN}Smooth animations${RESET} ${DIM}and modern UI${RESET}"
    echo -e "  🎮 ${GREEN}Interactive menus${RESET} ${DIM}with FZF integration${RESET}"
    echo -e "  📊 ${GREEN}Personal tracking${RESET} ${DIM}system${RESET}"
    echo -e "  🎬 ${GREEN}Smart player detection${RESET} ${DIM}(IINA, MPV, VLC)${RESET}"
    echo -e "  ⚡ ${GREEN}Performance optimized${RESET} ${DIM}with caching${RESET}"
    
    # Player-specific guidance
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if ! command -v iina >/dev/null 2>&1; then
            echo -e "\n${YELLOW}💡 ${BOLD}Recommended for macOS:${RESET}"
            echo -e "   ${CYAN}brew install --cask iina${RESET} ${DIM}# Best video player for Mac${RESET}"
            echo -e "   ${DIM}Or download: https://iina.io/${RESET}"
        fi
    fi
    
    if ! command -v chafa >/dev/null 2>&1; then
        echo -e "\n${YELLOW}💡 ${BOLD}For anime posters in terminal:${RESET}"
        if [[ "$OSTYPE" == "darwin"* ]]; then
            echo -e "   ${CYAN}brew install chafa${RESET}"
        else
            echo -e "   ${CYAN}sudo apt install chafa${RESET} ${DIM}(Ubuntu/Debian)${RESET}"
        fi
    fi
    
    echo -e "\n${CYAN}${BOLD}🔄 Uninstall:${RESET}"
    echo -e "  ${YELLOW}sudo rm $INSTALL_DIR/ani${RESET}"
    if [ -f "$INSTALL_DIR/ani-demo" ]; then
        echo -e "  ${YELLOW}sudo rm $INSTALL_DIR/ani-demo${RESET}"
    fi
    
    # Show backup info if created
    local backup_files=$(find "$INSTALL_DIR" -name "*.backup.*" 2>/dev/null | head -1)
    if [ -n "$backup_files" ]; then
        echo -e "\n${CYAN}${BOLD}📦 Restore backup:${RESET}"
        echo -e "  ${YELLOW}sudo cp $backup_files $INSTALL_DIR/ani${RESET}"
    fi
    
    echo -e "\n${PURPLE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
    echo -e "${PURPLE}🎌 Enhanced by Andromeda ✨ | Built upon ani-cli by pystardust${RESET}"
    echo -e "${PURPLE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
}

# Interactive installation confirmation
confirm_installation() {
    echo -e "${YELLOW}${BOLD}This will install Enhanced ANI CLI with:${RESET}"
    echo -e "  🎌 ${GREEN}New command:${RESET} 'ani' ${DIM}(replaces ani-cli conflicts)${RESET}"
    echo -e "  🎨 ${GREEN}Modern UI:${RESET} Enhanced FZF themes and animations"  
    echo -e "  📺 ${GREEN}Visual menus:${RESET} Episode selection with previews"
    echo -e "  🎮 ${GREEN}Interactive:${RESET} Post-episode menus and controls"
    echo -e "  📊 ${GREEN}Personal:${RESET} Dashboard, watchlist, and favorites"
    echo -e "  🎬 ${GREEN}Player integration:${RESET} IINA (macOS), MPV, VLC support"
    echo -e "  ⚡ ${GREEN}Performance:${RESET} Smart caching and optimizations"
    echo ""
    
    while true; do
        read -p "$(echo -e "${CYAN}Continue with installation? (y/N): ${RESET}")" -n 1 -r
        echo ""
        case $REPLY in
            [Yy]* ) return 0 ;;
            [Nn]* | "" ) 
                echo -e "${YELLOW}Installation cancelled.${RESET}"
                exit 0
                ;;
            * ) echo -e "${RED}Please answer y or n.${RESET}" ;;
        esac
    done
}

# Main installation flow
main() {
    print_banner
    check_dependencies
    check_installation_files
    confirm_installation
    install_enhanced_ani
    post_install_setup
    
    echo -e "\n${GREEN}${BOLD}🎉 Ready to watch anime! Try: ${CYAN}ani \"your favorite anime\"${RESET}"
}

# Handle interruption gracefully
trap 'echo -e "\n${RED}Installation interrupted.${RESET}"; exit 1' INT TERM

# Run main installation
main "$@" 