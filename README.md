# PuzzleCam — Game Photobooth Gestur Tangan (UKM IT 2026)

Aplikasi web *photobooth* dan puzzle interaktif berbasis **AI Hand Gesture Recognition** yang berjalan 100% di browser, tanpa instalasi dependensi, dan dapat diakses langsung oleh siapa saja.

---

## Tentang Proyek

**PuzzleCam** memungkinkan pengguna berfoto tanpa menyentuh mouse atau keyboard. Pengguna menunjukkan pose V dengan satu tangan untuk memulai foto berwarna dengan bingkai tengah. Setelah foto menjadi puzzle, cubit dengan ibu jari dan telunjuk untuk menggeser kepingan. Foto dipecah menjadi puzzle 3x3, lalu disusun kembali menggunakan gestur cubitan jari (*pinch*).

Setelah selesai, kepingan puzzle akan menyatu dan pecah secara dinamis (*shatter effect*) untuk disimpan ke dalam **strip foto vertikal** yang dapat langsung diunduh sebagai suvenir digital.

---

## Fitur Utama

1. **Touchless Gesture Control**:
   - Deteksi 21 titik sendi tangan secara *real-time* menggunakan model AI Google MediaPipe.
   - Tanpa perlu menyentuh layar, mouse, atau keyboard.
2. **Foto Berwarna**:
   - Mempertahankan warna asli dari webcam pada foto, puzzle, dan strip hasil akhir.
3. **Mini-Game Puzzle 3x3 Dinamis**:
   - Pemotongan kanvas otomatis menjadi 9 keping puzzle dengan animasi pemindahan (*displacement*) dan efek magnet (*snap-to-grid*).
4. **Cetak Strip Foto Klasik**:
   - Menampung hingga 3 sesi foto berurutan dan menempatkannya pada template untuk diunduh sebagai satu berkas PNG.
---

## Panduan Kontrol Gestur

| Gestur | Visual | Aksi di Aplikasi |
|---|---|---|
| **Pose V (telunjuk + tengah)** | Titik hijau & bingkai tengah | Tahan sebentar untuk memulai hitung mundur 3 detik dan mengambil foto. |
| **Cubit 1 Tangan (Single Hand Pinch)** | Titik hijau di atas kepingan | Menjepit dan menggeser (*drag and drop*) kepingan puzzle ke posisi yang benar. |
| **Kepalkan Tangan (Fist Hold)** | Tahan beberapa saat | Menyimpan puzzle yang telah selesai atau mereset sesi puzzle jika ingin mengulang. |

> **Tips:** Tahan pose V sampai hitung mundur muncul. Saat menyusun puzzle, dekatkan ujung ibu jari dan telunjuk untuk mencubit kepingan sampai indikator berubah menjadi **warna hijau**.

---

## Tech Stack

- **Computer Vision / AI**: [Google MediaPipe Tasks Vision](https://developers.google.com/mediapipe) `v0.10.14` (HandLandmarker WASM + GPU/CPU Delegate)
- **Graphic & Canvas**: HTML5 Canvas 2D API
- **Logic**: Vanilla JavaScript (Modern ES Modules)
- **Styling**: Vanilla CSS (Custom Design System, Dark Photobooth Aesthetic)
- **Hosting / Deployment**: Vercel (HTTPS ready)

---

## Cara Menjalankan Secara Lokal

1. Buka folder proyek ini di VS Code.
2. Pasang ekstensi **Live Server** (oleh Ritwick Dey) jika belum terpasang.
3. Klik kanan pada berkas `index.html` lalu pilih **"Open with Live Server"**.
4. Peramban akan otomatis terbuka di `http://localhost:5500`.
