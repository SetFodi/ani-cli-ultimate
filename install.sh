#!/bin/bash

# 🎌 ANI-CLI ULTIMATE INSTALLER 🎌
# Enhanced anime streaming installation script
# Made by Andromeda ✨

set -euo pipefail

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# Installation banner
print_banner() {
    clear
    echo -e "${PURPLE}${BOLD}"
    echo "     ╔═══════════════════════════════════════════════════════════╗"
    echo "     ║                 🎌 ANI-CLI ULTIMATE 🎌                   ║"
    echo "     ║                    INSTALLER SCRIPT                       ║"
    echo "     ║                  Made by Andromeda ✨                    ║"
    echo "     ╚═══════════════════════════════════════════════════════════╝"
    echo -e "${RESET}"
    echo ""
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install dependencies
install_dependencies() {
    echo -e "${CYAN}${BOLD}📦 Installing dependencies...${RESET}"
    
    # Check OS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        if ! command_exists brew; then
            echo -e "${RED}❌ Homebrew not found. Please install Homebrew first:${RESET}"
            echo -e "${YELLOW}  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"${RESET}"
            exit 1
        fi
        
        echo -e "${YELLOW}🍺 Using Homebrew to install dependencies...${RESET}"
        
        # Install dependencies
        local deps=("ani-cli" "jq" "chafa" "fzf")
        for dep in "${deps[@]}"; do
            if ! command_exists "$dep"; then
                echo -e "${BLUE}Installing $dep...${RESET}"
                brew install "$dep" || {
                    echo -e "${RED}Failed to install $dep${RESET}"
                    exit 1
                }
            else
                echo -e "${GREEN}✅ $dep already installed${RESET}"
            fi
        done
        
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        echo -e "${YELLOW}🐧 Detected Linux system${RESET}"
        
        # Check for package manager
        if command_exists apt; then
            sudo apt update
            sudo apt install -y curl jq fzf chafa
            
            # Install ani-cli manually for Linux
            if ! command_exists ani-cli; then
                echo -e "${BLUE}Installing ani-cli...${RESET}"
                curl -sL github.com/pystardust/ani-cli/raw/master/ani-cli -o /tmp/ani-cli
                sudo cp /tmp/ani-cli /usr/local/bin/ani-cli
                sudo chmod +x /usr/local/bin/ani-cli
            fi
            
        elif command_exists pacman; then
            sudo pacman -Sy --noconfirm curl jq fzf chafa
            
            # Install ani-cli from AUR or manually
            if ! command_exists ani-cli; then
                echo -e "${BLUE}Installing ani-cli...${RESET}"
                curl -sL github.com/pystardust/ani-cli/raw/master/ani-cli -o /tmp/ani-cli
                sudo cp /tmp/ani-cli /usr/local/bin/ani-cli
                sudo chmod +x /usr/local/bin/ani-cli
            fi
        else
            echo -e "${RED}❌ Unsupported Linux distribution. Please install manually:${RESET}"
            echo -e "${YELLOW}  - ani-cli${RESET}"
            echo -e "${YELLOW}  - jq${RESET}"
            echo -e "${YELLOW}  - fzf${RESET}"
            echo -e "${YELLOW}  - chafa${RESET}"
            exit 1
        fi
    else
        echo -e "${RED}❌ Unsupported operating system: $OSTYPE${RESET}"
        exit 1
    fi
    
    echo -e "${GREEN}✅ All dependencies installed successfully!${RESET}"
    echo ""
}

# Install ani-ultimate
install_ani_ultimate() {
    echo -e "${CYAN}${BOLD}🎌 Installing ANI-CLI ULTIMATE...${RESET}"
    
    # Check if script exists
    if [[ ! -f "ani-ultimate" ]]; then
        echo -e "${RED}❌ ani-ultimate script not found in current directory${RESET}"
        exit 1
    fi
    
    # Make executable
    chmod +x ani-ultimate
    
    # Copy to system path
    echo -e "${YELLOW}📋 Copying to /usr/local/bin/...${RESET}"
    sudo cp ani-ultimate /usr/local/bin/ani-ultimate
    
    # Create symlink for 'ani' command
    echo -e "${YELLOW}🔗 Creating 'ani' command symlink...${RESET}"
    sudo ln -sf /usr/local/bin/ani-ultimate /usr/local/bin/ani
    
    echo -e "${GREEN}✅ ANI-CLI ULTIMATE installed successfully!${RESET}"
    echo ""
}

# Create cache directories
setup_cache() {
    echo -e "${CYAN}${BOLD}📁 Setting up cache directories...${RESET}"
    
    local cache_dir="$HOME/.cache/ani-ultimate"
    local poster_cache="$cache_dir/posters"
    
    mkdir -p "$cache_dir" "$poster_cache"
    
    echo -e "${GREEN}✅ Cache directories created at $cache_dir${RESET}"
    echo ""
}

# Test installation
test_installation() {
    echo -e "${CYAN}${BOLD}🧪 Testing installation...${RESET}"
    
    if command_exists ani; then
        echo -e "${GREEN}✅ 'ani' command is available${RESET}"
        
        # Test help command
        echo -e "${YELLOW}📖 Testing help command...${RESET}"
        ani --help >/dev/null 2>&1 && echo -e "${GREEN}✅ Help command works${RESET}" || echo -e "${RED}❌ Help command failed${RESET}"
        
    else
        echo -e "${RED}❌ 'ani' command not found in PATH${RESET}"
        echo -e "${YELLOW}💡 Try running: source ~/.bashrc or source ~/.zshrc${RESET}"
    fi
    echo ""
}

# Main installation function
main() {
    print_banner
    
    echo -e "${CYAN}Welcome to ANI-CLI ULTIMATE installer!${RESET}"
    echo -e "${YELLOW}This will install enhanced anime streaming with:${RESET}"
    echo -e "  🎨 Beautiful anime posters"
    echo -e "  🌈 Enhanced visual interface"
    echo -e "  ⚡ Smooth animations & transitions"
    echo -e "  🎭 Custom fzf styling"
    echo -e "  📊 Anime ratings & info"
    echo ""
    
    read -p "Continue with installation? (y/N): " -n 1 -r
    echo ""
    
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${YELLOW}Installation cancelled.${RESET}"
        exit 0
    fi
    
    echo ""
    echo -e "${PURPLE}${BOLD}🚀 Starting installation...${RESET}"
    echo ""
    
    # Install steps
    install_dependencies
    install_ani_ultimate
    setup_cache
    test_installation
    
    # Success message
    echo -e "${PURPLE}╭─────────────────────────────────────────────╮${RESET}"
    echo -e "${PURPLE}│${GREEN}${BOLD}        🎉 INSTALLATION COMPLETE! 🎉        ${PURPLE}│${RESET}"
    echo -e "${PURPLE}╰─────────────────────────────────────────────╯${RESET}"
    echo ""
    echo -e "${CYAN}${BOLD}🎌 Usage:${RESET}"
    echo -e "  ${GREEN}ani${RESET} ${YELLOW}\"death note\"${RESET}"
    echo -e "  ${GREEN}ani${RESET} ${YELLOW}\"attack on titan\"${RESET}"
    echo -e "  ${GREEN}ani${RESET} ${YELLOW}--help${RESET}"
    echo ""
    echo -e "${PURPLE}${BOLD}Made by Andromeda ✨${RESET}"
    echo -e "${DIM}Enhanced Visual Anime Experience${RESET}"
}

# Run installer
main "$@" 