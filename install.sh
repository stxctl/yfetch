#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

declare -A os_managers
os_managers=(
    ["pacman"]="arch"
    ["apt-get"]="debian"
    ["dnf"]="fedora"
    ["xbps-install"]="void"
    ["eopkg"]="solus"
    ["brew"]="macos"
)

OS_TYPE="unknown"

for manager in "${!os_managers[@]}"; do
    if command -v "$manager" &> /dev/null; then
        OS_TYPE=${os_managers[$manager]}
        break
    fi
done

echo -e "İşletim sistemi tespit edildi: ${GREEN}$OS_TYPE${NC}"

# 2. Bağımlılıkları Yükleme Fonksiyonu
install_deps() {
    case $OS_TYPE in
        arch)
            sudo pacman -S --noconfirm yt-dlp ffmpeg python
            ;;
        debian)
            sudo apt-get update && sudo apt-get install -y yt-dlp ffmpeg python3
            ;;
        fedora)
            sudo dnf install -y yt-dlp ffmpeg python3
            ;;
        void)
            sudo xbps-install -Sy yt-dlp ffmpeg python3
            ;;
        solus)
            sudo eopkg it yt-dlp ffmpeg python3
            ;;
        macos)
            brew install yt-dlp ffmpeg python
            ;;
        *)
            echo -e "${RED}Otomatik yükleme desteklenmiyor.${NC}"
            echo -e "${YELLOW}Lütfen manuel kurun: yt-dlp, ffmpeg, python3${NC}"
            return 1
            ;;
    esac
}

install_deps

# 3. Kopyalama ve İzinler
if [ -f "yfetch" ]; then
    echo -e "Script /usr/local/bin/ altına kopyalanıyor..."
    sudo cp yfetch /usr/local/bin/yfetch
    sudo chmod +x /usr/local/bin/yfetch
    echo -e "${GREEN}İşlem Tamamlandı!${NC}"
else
    echo -e "${RED}Hata: 'yfetch' dosyası bu dizinde bulunamadı.${NC}"
    exit 1
fi

