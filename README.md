# 📱 AnimeList UAS — Flutter + MyAnimeList API  
Ujian Akhir Semester — Mobile Programming  

## 🚀 Fitur Utama

### ✔ 1. Home Page — Top Anime Ranking
- Menampilkan ranking anime dari MyAnimeList API.
- Data real-time.
- Loading menggunakan shimmer.
- Tombol retry jika internet error.

### ✔ 2. Search Page — Cari Anime
- Mencari anime berdasarkan judul.
- Endpoint digunakan:  
  `GET https://api.myanimelist.net/v2/anime?q={query}&limit=20`
- Loading shimmer + error handling.

### ✔ 3. Season Page — Seasonal Anime
- Filter season: **winter, spring, summer, fall**.
- Filter tahun: **dinamis dari tahun sekarang ke bawah**.
- Endpoint:  
  `GET /anime/season/{year}/{season}`

### ✔ 4. Detail Anime Page
Tampilan lengkap:
- Poster
- Judul
- Rating
- Tahun / Season
- Genre
- Synopsis  
Menggunakan `SliverAppBar` + banner gambar.

### ✔ 5. Favorite System
- Menyimpan anime favorit lokal melalui `SharedPreferences`.
- Tidak hilang meskipun aplikasi ditutup.
- Tidak perlu login API.

### ✔ 6. Login & Register (Local Auth)
- Login & register lokal (simulasi UAS).
- Data user disimpan lokal.
- Logout tersedia.

### ✔ 7. Profile Page
- Menampilkan data user.
- Tombol logout.

### ✔ 8. UI/UX Modern + Shimmer Loading
- Setiap halaman API punya shimmer custom:
  - Shimmer banner
  - Shimmer judul
  - Shimmer rating
  - Shimmer synopsis
- Styling rapi dan responsif.

---

## 📂 Struktur Folder
    lib/
    ├─ main.dart
    │
    ├─ auth/
    │ ├─ auth_guard.dart
    │ ├─ login_page.dart
    │ └─ register_page.dart
    │
    ├─ core/
    │ ├─ app_session.dart
    │ └─ constants.dart
    │
    ├─ models/
    │ ├─ anime.dart
    │ ├─ anime_detail.dart
    │ └─ user.dart
    │
    ├─ pages/
    │ ├─ home_page.dart
    │ ├─ search_page.dart
    │ ├─ season_page.dart
    │ ├─ favorites_page.dart
    │ ├─ detail_page.dart
    │ ├─ root_screen.dart
    │ │
    │ └─ profile/
    │ └─ profile_page.dart
    │
    ├─ services/
    │ ├─ anime_api.dart
    │ └─ http_client.dart
    │
    ├─ utils/
    │ └─ shared_pref.dart
    │
    └─ widgets/
    ├─ anime_card.dart
    ├─ error_widget.dart
    ├─ loading_widget.dart
    └─ shimmer_box.dart

📁 Penjelasan Struktur Folder & File

core/
  constants.dart → Base URL API & MAL Client ID
  app_session.dart → Session login user (SharedPreferences)
  
services/
  anime_api.dart → Fetch API (ranking, search, season, detail)
  http_client.dart → Wrapper HTTP + header Client ID
  
models/
  anime.dart → Model data anime
  anime_detail.dart → Model detail anime
  user.dart → Model user lokal
  
widgets/
  shimmer_box.dart → Widget shimmer loading
  error_widget.dart → Error + tombol retry
  anime_card.dart → Card anime reusable
  
pages/
  home_page.dart → Halaman ranking anime
  search_page.dart → Pencarian anime
  season_page.dart → Anime berdasarkan season & year
  detail_page.dart → Detail anime
  favorites_page.dart → Anime favorit lokal
  root_screen.dart → Bottom navigation
  
pages/profile/
  profile_page.dart → Profil user + logout
  
auth/
  login_page.dart → Login
  register_page.dart → Registrasi
  auth_guard.dart → Redirect jika belum login
  
utils/
  shared_pref.dart → Local storage helper
  
##🔗 API Endpoint yang Digunakan

1. Top Anime Ranking
GET https://api.myanimelist.net/v2/anime/ranking?ranking_type=all&limit=20

2. Search Anime
GET https://api.myanimelist.net/v2/anime?q={query}&limit=20

3. Seasonal Anime
GET https://api.myanimelist.net/v2/anime/season/{year}/{season}?limit=20

4. Detail Anime
GET https://api.myanimelist.net/v2/anime/{id}?fields=id,title,main_picture,mean,genres,synopsis,start_date

🎥 Video Demo
LINK

🛠 Instalasi
1. Clone Repository
git clone https://github.com/username/anime_app_uas.git
cd anime_app_uas

2. Install Dependency
flutter pub get

3. Masukkan Client ID MyAnimeList
Edit file:
  lib/core/constants.dart
Isi:
  static const clientId = "YOUR_CLIENT_ID_HERE";

4. Jalankan Aplikasi
flutter run


