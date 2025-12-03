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

📁 Penjelasan Struktur Folder & File
🔹 core/
File	Deskripsi
constants.dart	Menyimpan base URL API, MAL clientId, dan konfigurasi global lainnya.
app_session.dart	Menyimpan status login user, data user, serta kontrol session menggunakan SharedPreferences.
🔹 services/
File	Deskripsi
anime_api.dart	Berisi seluruh fungsi HTTP GET ke MyAnimeList API (ranking, search, seasonal, detail anime).
http_client.dart	Wrapper HTTP (package http) yang otomatis menambahkan header X-MAL-CLIENT-ID.
🔹 models/
File	Deskripsi
anime.dart	Model untuk data anime singkat (id, title, image, score, year).
anime_detail.dart	Model data detail anime (image, synopsis, genres, mean, year).
user.dart	Model data user lokal (email, username, password).
🔹 widgets/
File	Deskripsi
shimmer_box.dart	Widget shimmer loading reusable (dipakai di Home, Search, Season, Detail).
error_widget.dart	Widget error handler dengan tombol Retry + pesan error.
anime_card.dart	Widget card anime reusable untuk grid/list.
🔹 pages/
File	Deskripsi
home_page.dart	Halaman Top Anime Ranking dari API.
search_page.dart	Halaman pencarian anime berdasarkan keyword API.
season_page.dart	Halaman filter Anime berdasarkan season & year.
detail_page.dart	Halaman detail anime (image, rating, genre, sinopsis).
favorites_page.dart	Halaman daftar anime favorit yang disimpan lokal.
root_screen.dart	Halaman utama berisi Bottom Navigation Bar.
🔹 pages/profile/
File	Deskripsi
profile_page.dart	Menampilkan data user + tombol logout.
🔹 auth/
File	Deskripsi
login_page.dart	Halaman login user lokal.
register_page.dart	Halaman registrasi user lokal.
auth_guard.dart	Melakukan pengecekan login; redirect ke login jika belum login.
🔹 utils/
File	Deskripsi
shared_pref.dart	Helper untuk menyimpan data local (login, user, favorit).

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


