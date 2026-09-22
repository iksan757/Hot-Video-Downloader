#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

SCRIPT_NAME="vidownload"
BIN_DIR="$HOME/.local/bin"
DATA_DIR="$HOME/.local/share/hotvideo"
INSTALL_FLAG="$DATA_DIR/.installed"

echo -e "${CYAN}[+] Memulai proses instalasi...${NC}"

# 1. Install Paket Dependensi
echo -e "${YELLOW}[1/4] Memasang dependensi sistem & python...${NC}"
if command -v pkg &> /dev/null; then
    pkg update -y && pkg install python aria2 ffmpeg ncurses-utils -y
elif command -v apt &> /dev/null; then
    sudo apt update && sudo apt install python3 python3-pip aria2 ffmpeg ncurses-bin -y
fi

pip install --upgrade pip yt-dlp --quiet

# 2. Buat folder ~/.local/bin dan folder data
echo -e "${YELLOW}[2/4] Menyiapkan direktori instalasi...${NC}"
mkdir -p "$BIN_DIR"
mkdir -p "$DATA_DIR"

# 3. Salin skrip utama ke ~/.local/bin dan beri akses eksekusi
echo -e "${YELLOW}[3/4] Memasang skrip ke $BIN_DIR...${NC}"
if [ -f "$SCRIPT_NAME" ]; then
    cp "$SCRIPT_NAME" "$BIN_DIR/$SCRIPT_NAME"
    chmod +x "$BIN_DIR/$SCRIPT_NAME"
else
    echo -e "${RED}[!] File '$SCRIPT_NAME' tidak ditemukan di folder saat ini!${NC}"
    exit 1
fi

# 4. Tambahkan ~/.local/bin ke PATH jika belum terdaftar
echo -e "${YELLOW}[4/4] Mengatur PATH environment...${NC}"
SHELL_CONFIG=""
if [ -n "$BASH_VERSION" ]; then
    SHELL_CONFIG="$HOME/.bashrc"
elif [ -n "$ZSH_VERSION" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
else
    SHELL_CONFIG="$HOME/.profile"
fi

if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$SHELL_CONFIG" 2>/dev/null; then
    echo '' >> "$SHELL_CONFIG"
    echo '# Local binaries path' >> "$SHELL_CONFIG"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_CONFIG"
fi

# Buat file penanda sukses install
touch "$INSTALL_FLAG"

echo ""
echo -e "${GREEN}[✔] INSTALASI BERHASIL!${NC}"
echo -e "${CYAN}[i] Buka terminal baru atau jalankan:${NC} source $SHELL_CONFIG"
echo -e "${CYAN}[i] Sekarang kamu bisa menjalankan perintah ini dari mana saja:${NC}"
echo -e "    ${YELLOW}$SCRIPT_NAME${NC}"

