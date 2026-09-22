<div align="center">

# ⚡ Turbo Hot Video Downloader

  <p align="center">
    <strong>Skrip CLI Downloader cepat, hemat kuota, dan kaya fitur visual untuk Termux & Linux.</strong>
    <br />
    <br />
    <a href="#-fitur-utama">Fitur Utama</a> •
    <a href="#-persyaratan-sistem">Persyaratan</a> •
    <a href="#-cara-instalasi">Instalasi</a> •
    <a href="#-cara-penggunaan">Penggunaan</a> •
    <a href="#-troubleshooting">Troubleshooting</a>
  </p>

  ![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
  ![Aria2](https://img.shields.io/badge/Downloader-Aria2c-000000?style=for-the-badge)
  ![yt-dlp](https://img.shields.io/badge/Extractor-yt--dlp-red?style=for-the-badge)
  ![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

</div>

 <img width="1080" height="1263" alt="52993155b3499b3f381f3edb4f2cdd5b6e87d5d2" src="https://github.com/user-attachments/assets/ed23d5ea-3770-472d-b458-6029b8a4e4db" />
 
 ## 📌 Deskripsi

**ARIA2C Turbo Video Downloader** (`vidownload`) adalah skrip otomatisasi CLI berbasis Bash yang menggabungkan kemampuan ekstraksi **yt-dlp** dan kecepatan unduh *multi-threading* **aria2c**. 

Dirancang untuk mendownload video dari situs 18+.

---

## ✨ Fitur Utama

- 🚀 **Multi-Thread Acceleration**: Menggunakan 16 koneksi paralel via `aria2c` untuk kecepatan unduh maksimal.
- 📉 **Pilihan Kualitas Hemat (Size Reducer)**: Opsi fleksibel untuk memilih kualitas video (360p, 480p, 720p, atau Best) guna menghemat ruang penyimpanan & kuota.
- 🎨 **Dashboard Animasi Visual**: Tampilan progress bar bergaya visual (`[██████░░░░]`), *spinner* berputar, *real-time speed*, dan estimasi waktu (ETA).
- ⏯️ **Interactive Controls**: Fitur jeda/lanjutkan (*pause/resume*) langsung saat proses unduh berjalan tanpa menghentikan koneksi.
- 🌐 **Anti-Block & DNS Bypasser**: Otom
atis menyetel DNS resolver (Cloudflare `1.1.1.1` / Google `8.8.8.8`) dan mengirimkan *header* (User-Agent & Referer) agar terhindar dari pemblokiran server.
- 📦 **Global Command**: Dapat dipanggil dari direktori manapun di terminal setelah proses instalasi.

---

## 💻 Persyaratan Sistem

- **OS**: Termux (Android) atau Distribusi Linux (Ubuntu, Debian, Arch, dll.)
- **Shell**: Bash / Zsh

*Seluruh paket pendukung (`python`, `aria2`, `ffmpeg`, `yt-dlp`, dll)

---

## 🚀 Cara Instalasi

1. **Clone / Download repositori ini** ke perangkat kamu:
   ```bash
   git clone https://github.com/iksan757/Hot-Video-Downloader.git
   cd Hot-Video-Downloader/assets/
  
    bash install.sh

  
