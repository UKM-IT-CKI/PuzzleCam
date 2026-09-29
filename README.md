# PuzzleCam — Game Photobooth Gestur Tangan (UKM IT 2026)

Aplikasi web *photobooth* dan puzzle interaktif berbasis **AI Hand Gesture Recognition** yang berjalan 100% di browser tanpa backend, tanpa instalasi dependensi rumit, dan dapat diakses langsung oleh siapa saja.

---

## 📸 Tentang Proyek

**PuzzleCam** memungkinkan pengguna berfoto tanpa menyentuh mouse atau keyboard. Pengguna menunjukkan pose V dengan satu tangan untuk memulai foto berwarna dengan bingkai tengah. Setelah foto menjadi puzzle, cubit dengan ibu jari dan telunjuk untuk menggeser kepingan. Foto dipecah menjadi puzzle 3x3, lalu disusun kembali menggunakan gestur cubitan jari (*pinch*).

Setelah selesai, kepingan puzzle akan menyatu dan pecah secara dinamis (*shatter effect*) untuk disimpan ke dalam **strip foto vertikal** yang dapat langsung diunduh sebagai suvenir digital.

---

## ✨ Fitur Utama

1. **Touchless Gesture Control**:
   - Deteksi 21 titik sendi tangan secara *real-time* menggunakan model AI Google MediaPipe.
   - Tanpa perlu menyentuh layar, mouse, atau keyboard.
2. **Foto Berwarna**:
   - Mempertahankan warna asli dari webcam pada foto, puzzle, dan strip hasil akhir.
3. **Mini-Game Puzzle 3x3 Dinamis**:
   - Pemotongan kanvas otomatis menjadi 9 keping puzzle dengan animasi pemindahan (*displacement*) dan efek magnet (*snap-to-grid*).
4. **Cetak Strip Foto Klasik**:
   - Menampung hingga 3 sesi foto berurutan dan menempatkannya pada template `frame_strip.png` untuk diunduh sebagai satu berkas PNG.
5. **Safety Net untuk Demo Presentasi**:
   - Dilengkapi fallback interaksi *mouse/touch drag-and-drop* untuk memastikan demo tidak akan pernah gagal saat presentasi di ruangan dengan pencahayaan minim.

---

## 🖐️ Panduan Kontrol Gestur

| Gestur | Visual | Aksi di Aplikasi |
|---|---|---|
| **Pose V (telunjuk + tengah)** | Titik hijau & bingkai tengah | Tahan sebentar untuk memulai hitung mundur 3 detik dan mengambil foto. |
| **Cubit 1 Tangan (Single Hand Pinch)** | Titik hijau di atas kepingan | Menjepit dan menggeser (*drag and drop*) kepingan puzzle ke posisi yang benar. |
| **Kepalkan Tangan (Fist Hold)** | Tahan beberapa saat | Menyimpan puzzle yang telah selesai atau mereset sesi puzzle jika ingin mengulang. |

> **Tips:** Tahan pose V sampai hitung mundur muncul. Saat menyusun puzzle, dekatkan ujung ibu jari dan telunjuk untuk mencubit kepingan sampai indikator berubah menjadi **warna hijau**.

---

## 🛠️ Tech Stack

- **Computer Vision / AI**: [Google MediaPipe Tasks Vision](https://developers.google.com/mediapipe) `v0.10.14` (HandLandmarker WASM + GPU/CPU Delegate)
- **Graphic & Canvas**: HTML5 Canvas 2D API
- **Logic**: Vanilla JavaScript (Modern ES Modules)
- **Styling**: Vanilla CSS (Custom Design System, Dark Photobooth Aesthetic)
- **Hosting / Deployment**: Vercel (HTTPS ready)

---

## 🚀 Cara Menjalankan Secara Lokal

Karena aplikasi ini memerlukan izin akses kamera (*webcam*) dan memuat modul WASM dari CDN, peramban mengharuskan aplikasi dijalankan melalui protokol **HTTP/HTTPS** (bukan `file:///`).

### Opsi 1: Menggunakan VS Code Live Server (Paling Mudah)
1. Buka folder proyek ini di VS Code.
2. Pasang ekstensi **Live Server** (oleh Ritwick Dey) jika belum terpasang.
3. Klik kanan pada berkas `index.html` lalu pilih **"Open with Live Server"**.
4. Peramban akan otomatis terbuka di `http://localhost:5500`.

### Opsi 2: Menggunakan Node.js
```bash
npx serve .
```

### Opsi 3: Menggunakan Python
```bash
python -m http.server 5500
```
Lalu buka peramban di `http://localhost:5500`.

---

## 📦 Panduan Push ke GitHub

Jika kamu ingin mengunggah proyek ini ke repositori GitHub pribadimu:

1. Buka terminal di folder proyek ini (`Puzzle-main`):
   ```bash
   git init
   git add .
   git commit -m "feat: inisialisasi PuzzleCam versi UKM IT 2026 dengan lokalisasi Indonesia"
   ```
2. Buat repositori baru di [GitHub](https://github.com/new) (misalnya bernama `puzzle-cam-ukmit`).
3. Hubungkan dan push ke repositori GitHub:
   ```bash
   git branch -M main
   git remote add origin https://github.com/<username-kamu>/puzzle-cam-ukmit.git
   git push -u origin main
   ```

---

## ☁️ Panduan Deploy ke Vercel

Aplikasi ini sudah dilengkapi dengan berkas `vercel.json` dan siap dideploy langsung ke **Vercel** secara gratis.

### Cara 1: Deploy Otomatis via GitHub (Sangat Disarankan)
1. Masuk ke dashboard [Vercel](https://vercel.com).
2. Klik tombol **"Add New..."** > **"Project"**.
3. Hubungkan akun GitHub kamu dan pilih repositori yang baru saja kamu push.
4. Pada bagian **Framework Preset**, pilih **Other** (karena merupakan situs statis murni).
5. Klik tombol **"Deploy"**.
6. Selesai! Dalam hitungan detik, aplikasi kamu aktif dengan alamat URL resmi berprotokol HTTPS (misal: `https://puzzle-cam-ukmit.vercel.app`).

### Cara 2: Deploy Cepat via Vercel CLI
```bash
npx vercel
```
Ikuti petunjuk di terminal (pilih default untuk semua pertanyaan).

> **Penting untuk Akses Webcam:** Kamera web di browser hanya dapat aktif pada domain `localhost` atau domain publik yang menggunakan **HTTPS**. Vercel menyediakan sertifikat SSL/HTTPS gratis secara otomatis sehingga kamera langsung dapat berfungsi tanpa kendala.

---

## 💡 Tips Sukses Demo Presentasi UKM IT

1. **Pencahayaan**: Pastikan ruangan demo memiliki cahaya yang cukup agar kamera mengenali kontur jari dengan presisi.
2. **Jarak dari Kamera**: Posisikan tubuh sekitar 50 cm – 1 meter dari kamera agar seluruh gestur tangan masuk ke dalam bingkai.
3. **Browser Terbaik**: Gunakan Google Chrome atau Microsoft Edge untuk performa WebAssembly dan akselerasi GPU MediaPipe yang optimal.
4. **Safety Net**: Jika panggung presentasi mendadak terlalu gelap atau kamera terhalang, kepingan puzzle tetap dapat digeser menggunakan **mouse / trackpad** secara mulus tanpa mengganggu jalannya demonstrasi.

---

## 📄 Lisensi
MIT License — Bebas digunakan, dimodifikasi, dan dikembangkan untuk keperluan akademik dan kegiatan UKM IT.
