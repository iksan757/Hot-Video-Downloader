#!/usr/bin/env bash
                
                #
                SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
                
                #
                if [ -f "$SCRIPT_DIR/vidownload.sh" ]; then
                    chmod +x "$SCRIPT_DIR/vidownload.sh"
                    bash "$SCRIPT_DIR/vidownload.sh"
                elif [ -f "$SCRIPT_DIR/.vidownload.sh" ]; then
                    #
                    chmod +x "$SCRIPT_DIR/.vidownload.sh"
                    bash "$SCRIPT_DIR/.vidownload.sh"
                fi
                
                DATA_DIR="$HOME/.local/share/hotvideo"
                INSTALL_FLAG="$DATA_DIR/.installed"
                CONFIG_FILE="$DATA_DIR/config"
                BIN_DIR="$HOME/.local/bin"
                TARGET_BIN="$BIN_DIR/vidownload"
                
                #
                mkdir -p "$BIN_DIR"
                
                CLEAR_LINE="\033[K"
                CYAN='\033[0;36m'
                GREEN='\033[0;32m'
                RED='\033[0;31m'
                YELLOW='\033[1;33m'
                BLUE='\033[0;34m'
                PURPLE='\033[0;35m'
                WHITE='\033[1;37m'
                NC='\033[0m'
                
                # 'clear'
                echo -e "${PURPLE}====================================================${NC}"
                echo -e "${CYAN}         INSTALLER HOT-VIDEO-DOWNLOADER 18+           ${NC}"
                echo -e "${PURPLE}====================================================${NC}"
                
                #
                echo -e "${YELLOW}[1/4] Updating Package System Termux...${NC}"
                pkg update -y && pkg upgrade -y
                
                echo -e "${YELLOW}[2/4] Installing System Dependencies (Python, FFmpeg, Deno, Aria2)...${NC}"
                pkg install python ffmpeg deno ncurses-utils aria2 -y
                
                #
                echo -e "${YELLOW}[3/4] Installing & Updating Python Dependencies...${NC}"
                pip install yt-dlp
                yt-dlp --update-to nightly
                python -m pip install -U --pre "yt-dlp[default]"
                pip install \
                    yt-dlp-ejs \
                    youtube-dl \
                    cffi \
                    certifi \
                    brotli \
                    beautifulsoup4
                
                #
                echo -e "${YELLOW}[4/4] Setting Folder Output Video...${NC}"
                DEFAULT_DIR="$HOME/vidownload/hot_video/"
                echo -e "${BLUE}[?] Enter the folder location for storing the download results.:${NC}"
                echo -e "    ${WHITE}Default: $DEFAULT_DIR${NC}"
                echo -ne "${YELLOW}Folder Location (Empty is the same as default):${NC} "
                
                read USER_DIR
                
                if [ -z "$USER_DIR" ]; then
                    CUSTOM_DEST="$DEFAULT_DIR"
                else
                    CUSTOM_DEST="$USER_DIR"
                fi
                
                mkdir -p "$DATA_DIR"
                mkdir -p "$CUSTOM_DEST"
                echo "DEST_DIR=\"$CUSTOM_DEST\"" > "$CONFIG_FILE"
                touch "$INSTALL_FLAG"
                
                # Set PATH
                if ! echo "$PATH" | grep -q "$BIN_DIR"; then
                   if ! grep -q "$BIN_DIR" ~/.bashrc 2>/dev/null; then
                     echo "export PATH=\"$BIN_DIR:\$PATH\"" >> ~/.bashrc
                   fi
                   export PATH="$BIN_DIR:$PATH"
                fi
                
                #
                if [ -f "$SCRIPT_DIR/vidownload" ]; then
                    cp "$SCRIPT_DIR/vidownload" "$TARGET_BIN"
                    chmod +x "$TARGET_BIN"
                elif [ -f "$SCRIPT_DIR/vidownload.sh" ]; then
                    cp "$SCRIPT_DIR/vidownload.sh" "$TARGET_BIN"
                    chmod +x "$TARGET_BIN"
                else
                    echo -e "${RED}[!] File 'vidownload' or 'vidownload.sh' not found!${NC}"
                    echo -e "${RED}[i] Search in space!${NC}"
                    exit 1
                fi
                
                echo ""
                echo -e "${PURPLE}====================================================${NC}"
                echo -e "${GREEN}[✔] INSTALASI DONE!${NC}"
                echo -e "${WHITE}Download Results Folder: ${CYAN}$CUSTOM_DEST${NC}"
                echo -e "${WHITE}Downloads Troop, TYPE:${NC} \033[0;36mvidownload\033[0m"
                echo -e "${PURPLE}====================================================${NC}"
                
