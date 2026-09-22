# ⚡ ARIA2C Turbo Video Downloader
![](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![](https://img.shields.io/badge/Downloader-Aria2c-000000?style=for-the-badge)
![](https://img.shields.io/badge/Extractor-yt--dlp-red?style=for-the-badge)
![](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)
---
![](/data/user/0/cloud.iothub.markdown_viewer_editor/cache/file_picker/1790044656087/Screenshot_vidownload.jpg)

## 📌 Deskripsi
**ARIA2C Turbo Video Downloader** (`vidownload`) adalah skrip otomatisasi CLI berbasis Bash yang menggabungkan kemampuan ekstraksi **yt-dlp** dan kecepatan unduh _multi-threading_ **aria2c**.
Dirancang khusus dengan **pilihan resolusi hemat ukuran file** serta tampilan **HUD Terminal Animasi** yang estetik dan bersih.
---
## ✨ Fitur Utama
* 🚀 **Multi-Thread Acceleration**: Menggunakan 16 koneksi paralel via `aria2c` untuk kecepatan unduh maksimal.
* 📉 **Pilihan Kualitas Hemat (Size Reducer)**: Opsi fleksibel untuk memilih kualitas video (360p, 480p, 720p, atau Best) guna menghemat ruang penyimpanan & kuota.
* 🎨 **Dashboard Animasi Visual**: Tampilan progress bar bergaya visual (`[██████░░░░]`), _spinner_ berputar, _real-time speed_, dan estimasi waktu (ETA).
* ⏯️ **Interactive Controls**: Fitur jeda/lanjutkan (_pause/resume_) langsung saat proses unduh berjalan tanpa menghentikan koneksi.
* 🌐 **Anti-Block & DNS Bypasser**: Otomatis menyetel DNS resolver (Cloudflare `1.1.1.1` / Google `8.8.8.8`) dan mengirimkan _header_ (User-Agent & Referer) agar terhindar dari pemblokiran server.
* 📦 **Global Command**: Dapat dipanggil dari direktori manapun di terminal setelah proses instalasi.
---
## 💻 Persyaratan Sistem
* **OS**: Termux (Android) atau Distribusi Linux (Ubuntu, Debian, Arch, dll.)
* **Shell**: Bash / Zsh
_Seluruh paket pendukung (__`python`__, __`aria2`__, __`ffmpeg`__, __`yt-dlp`__, dll) akan _***otomatis terpasang***_ melalui skrip __`install.sh`__._
---
## `## 🚀 Cara Instalasi

1. **Clone / Download repositori ini** ke perangkat kamu:
   ```bash
   git clone https://github.com/iksan757/Hot-Video-Downloader.git
   bash install.sh && vidownload
`
