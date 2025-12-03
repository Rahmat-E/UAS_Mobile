# 📱 AnimeList UAS — Flutter + MyAnimeList API  
Aplikasi Mobile Programming (UAS)  
Dibuat oleh: **[Nama Kamu]**  

Aplikasi ini merupakan pengembangan dari project UTS dengan menambahkan integrasi **RESTful API MyAnimeList** untuk menampilkan daftar anime secara real-time. Aplikasi memenuhi seluruh ketentuan UAS seperti HTTP Request, JSON parsing, UI asynchronous, Search, Filter, Detail Page, dan Shimmer Loading.

---

## 🚀 Fitur Utama
### ✔ 1. **Home Page**
- Menampilkan daftar **Top Anime Ranking** dari MyAnimeList API.
- Menggunakan `FutureBuilder` + `Shimmer` untuk loading state.
- Navigasi ke Detail Page.

### ✔ 2. **Search Anime**
- Pencarian anime berdasarkan judul.
- Menggunakan query parameter:  
  `GET https://api.myanimelist.net/v2/anime?q={query}`
- Loading shimmer + error handler + retry.

### ✔ 3. **Seasonal Anime Page**
- Filter berdasarkan **Season (winter/spring/summer/fall)** dan **Year**.
- Data diambil dari endpoint:  
  `GET /anime/season/{year}/{season}`

### ✔ 4. **Detail Anime**
- Menampilkan:
  - Judul
  - Poster
  - Rating (Score)
  - Season & Year
  - Genres
  - Synopsis
- Menggunakan banner dengan `SliverAppBar`.

### ✔ 5. **Favorite System (Local)**
- Simpan anime favorit ke device dengan `SharedPreferences`.
- Tidak butuh login API.
- Tetap tersimpan meskipun aplikasi ditutup.

### ✔ 6. **Login & Register (Local Auth)**
- Simulasi login lokal menggunakan SharedPreferences.
- Untuk akses Profile & Favorite.

### ✔ 7. **Profile Page**
- Menampilkan data user lokal.
- Logout untuk menghapus sesi.

### ✔ 8. **Arsitektur Project Rapi**
