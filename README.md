# 📱 AnimeList UAS — Flutter + MyAnimeList API  
Ujian Akhir Semester — Mobile Programming  
Dosen Pengampu: *(isi sendiri jika perlu)*  

Aplikasi ini merupakan pengembangan dari project UTS dengan mengintegrasikan **RESTful API MyAnimeList** untuk menampilkan data anime secara real-time.  
Aplikasi memenuhi seluruh ketentuan UAS seperti HTTP Request, JSON parsing, asynchronous UI, Search, Filter, Detail Page, dan Shimmer Loading.

---

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

core/constants.dart → menyimpan base URL API, MAL Client ID
core/app_session.dart → menyimpan status login user
services/anime_api.dart → fungsi fetch API (ranking, search, seasonal, detail)
services/http_client.dart → wrapper HTTP + header MAL
models/anime.dart → model data anime
models/anime_detail.dart → model detail anime
widgets/shimmer_box.dart → shimmer loading reusable
widgets/error_widget.dart → error + tombol retry
pages/home_page.dart → halaman ranking anime
pages/search_page.dart → halaman search API
pages/season_page.dart → halaman filter season + year
pages/detail_page.dart → halaman detail anime
pages/favorites_page.dart → daftar anime favorit lokal


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


