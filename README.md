<div align="center">

# ⚡ VIDOWNLOAD

  <p align="center">
    <strong>Skrip CLI Video Downloader</strong>
    <br />
    <br />
    <a href="#-key-features">Key Features</a> •
    <a href="#-system-requirements">Requirements</a> •
    <a href="#-installation">Installation</a> •
    <a href="#-usage">Usage</a> •
    <a href="#-troubleshooting">Troubleshooting</a>
  </p>


  ![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
  ![Aria2](https://img.shields.io/badge/Downloader-Aria2c-000000?style=for-the-badge)
  ![yt-dlp](https://img.shields.io/badge/Extractor-yt--dlp-red?style=for-the-badge)
  ![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

</div>

 <img width="1080" height="1263" alt="52993155b3499b3f381f3edb4f2cdd5b6e87d5d2" src="https://github.com/user-attachments/assets/ed23d5ea-3770-472d-b458-6029b8a4e4db" />

---

## 📌 Description

**Vidownload** (`Video Downloader`) is a bash script to download videos from video stream website pages.

---

## ✨ Key Features

- 🚀 **Multi-Threaded Acceleration**: Uses 16 parallel connections via `aria2c` for maximum download speed.
- 📉 **Quality & Size Options**: Flexible choices for video quality (360p, 480p, 720p, or Best) to save storage space and data.
- 🎨 **Visual Animation Dashboard**: Features a visual progress bar (`[██████░░░░]`), spinning spinner, real-time speed display, and estimated time (ETA).
- ⏯️ **Interactive Controls**: Pause/resume functionality during the download process without dropping the connection.
- 🌐 **Anti-Block & DNS Bypass**: Automatically provides DNS resolvers (Cloudflare `1.1.1.1` / Google `8.8.8.8`) and sends headers (User-Agent & Referer) to avoid server blocking.
- 📦 **Global Command**: Can be invoked from any directory in the terminal after installation.

---

## 💻 System Requirements

- **OS**: Termux (Android) or Linux Distribution (Ubuntu, Debian, Arch, etc.)
- **Shell**: Bash / Zsh
- **Dependencies**: `python`, `aria2`, `ffmpeg`, `python-yt-dlp`, `yt-dlp-ejs` *(Will be automatically checked and installed by the installer script)*.
  
---

## 🚀 Installation

1. **Clone / Download this repository** to your device:
```bash
git clone https://github.com/iksan757/Hot-Video-Downloader.git
cd Hot-Video-Downloader/assets/

bash install.sh
```
