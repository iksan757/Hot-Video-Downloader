<div align="center">

# ⚡ Turbo Hot Video Downloader

<p align="center">
<strong> A fast CLI video downloader wrapper for 18+ videos, designed for Termux & Linux.</strong>
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

>

## 📌 Description

**Hot Video Downloader** (`vidownload`) is a Bash-based CLI automation script that combines the extraction capabilities of **yt-dlp** with the multi-threaded download speed of **aria2c**.

It is designed to download videos from 18+ sites and features rapid direct link retrieval.

---

## ✨ Key Features

- 🚀 **Multi-Threaded Acceleration**: Uses 16 parallel connections via `aria2c` for maximum download speed. - 📉 **Quality & Size Options**: Flexible choices for video quality (360p, 480p, 720p, or Best) to save storage space and data.
- 🎨 **Visual Animation Dashboard**: Features a visual progress bar (`[██████░░░░]`), spinning spinner, real-time speed display, and estimated time (ETA).
- ⏯️ **Interactive Controls**: Pause/resume functionality during the download process without dropping the connection.
- 🌐 **Anti-Block & DNS Bypass**: Automatically provides DNS resolvers (Cloudflare `1.1.1.1` / Google `8.8.8.8`) and sends headers (User-Agent & Referer) to avoid server blocking.
- 📦 **Global Command**: Can be invoked from any directory in the terminal after installation.

---

## 💻 System Requirements

- **OS**: Termux (Android) or Linux Distribution (Ubuntu, Debian, Arch, etc.)
- **Shell**: Bash / Zsh

*All supporting packages (`python`, `aria2`, `ffmpeg`, `yt-dlp`, etc.)

---

## 🚀 Installation

1. **Clone / Download this repository** to your device:
```bash
git clone https://github.com/iksan757/Hot-Video-Downloader.git
cd Hot-Video-Downloader/assets/

bash install.sh
```
