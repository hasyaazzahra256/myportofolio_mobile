# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# MyPortfolio Mobile 

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=flat&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=flat&logo=dart&logoColor=white)](https://dart.dev)
[![License: Academic](https://img.shields.io/badge/License-Academic-green.svg)](https://opensource.org/licenses/MIT)

Aplikasi mobile multiplatform berbasis **Flutter** untuk ekosistem portofolio pribadi yang dikembangkan sebagai bagian dari mata kuliah **Pemrograman Berbasis Platform (CSGE602022)**, Fakultas Ilmu Komputer, Universitas Indonesia (Semester Gasal 2026/2027).

---

## Identitas 
- **Nama:** Hasya Azzahra Rangkuti
- **NPM:** 2506617512
- **Kelas:** PBP A
- **Repositori:** [hasyaazzahra256/myportofolio_mobile](https://github.com/hasyaazzahra256/myportofolio_mobile)

---

## Struktur Proyek

Pada tahap Tugas 7, struktur direktori proyek masih terpusat pada direktori `lib/` utama sebelum penerapan *refactoring* lanjutan:

```text
myportofolio_mobile/
├── lib/
│   └── main.dart           # Titik masuk aplikasi, halaman utama (MyHomePage), InfoCard, dan ItemCard
├── pubspec.yaml            # Manifes proyek dan konfigurasi dependensi Flutter
└── README.md               # Dokumentasi proyek, AI disclosure, dan pertanyaan reflektif
```

---

## Instruksi Setup & Menjalankan Aplikasi

### Prasyarat
- **Flutter SDK** (versi 3.x atau terbaru)
- **Dart SDK** (termasuk dalam Flutter SDK)
- **IDE:** Visual Studio Code atau Android Studio dengan ekstensi Flutter & Dart
- **Target Device:** Chrome (Web), Android Emulator, atau macOS Desktop

### Langkah Instalasi
1. **Clone repositori ini:**
   ```bash
   git clone [https://github.com/hasyaazzahra256/myportofolio_mobile.git](https://github.com/hasyaazzahra256/myportofolio_mobile.git)
   cd myportofolio_mobile
   ```
2. **Unduh semua dependensi proyek:**
   ```bash
   flutter pub get
   ```
3. **Verifikasi kualitas kode:**
   ```bash
   flutter analyze
   ```
4. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```

---

## Progres Pengerjaan (Tugas 7)
- Melakukan inisialisasi proyek Flutter baru bernama `myportofolio_mobile`.
- Mengimplementasikan identitas pribadi (NPM: `2506617512`, Nama: `Hasya Azzahra Rangkuti`, Kelas: `PBP A`) ke dalam widget `InfoCard`.
- Menambahkan model `ItemHomepage` dan tombol aksi interaktif (`ItemCard`) dengan variasi warna unik (`Colors.indigo`, `Colors.teal`, `Colors.deepOrange`).
- Mengonfigurasi umpan balik interaktif berupa `SnackBar` saat tombol menu ditekan oleh pengguna.

---

## AI Disclosure & Analisis Kritis

### Tools yang Digunakan
- **Google Gemini:** Digunakan sebagai asisten diskusi teknis untuk memahami konsep dasar *widget tree*, struktur layout Flutter, serta penyusunan dokumentasi tugas.

### Strategi Prompting & Bagian yang Dibantu
1. **Pemahaman Teori Dasar:** Menggunakan *prompt* tanya-jawab interaktif untuk memahami konsep `BuildContext`, perbedaan *StatelessWidget* dan *StatefulWidget*, serta cara kerja *widget tree*.
2. **Implementasi Kode Layout:** Meminta contoh penerapan widget tata letak dasar seperti `Row`, `Column`, `GridView.count`, dan `Card` untuk menyusun antarmuka halaman utama portofolio.
3. **Penyusunan Dokumentasi:** Membantu menstrukturkan draf `README.md` dan pertanyaan reflektif sesuai format penugasan.

### Analisis Kritis Keterbatasan AI & Perbaikan Manual
Dalam proses pengerjaan Tugas 7, terdapat beberapa hal dari respons awal AI yang memerlukan penyesuaian manual:
1. **Penyesuaian Data Identitas:** Data *placeholder* generik dari contoh AI diganti secara manual dengan data identitas asli mahasiswa (NPM dan nama lengkap).
2. **Kombinasi Warna & Styling:** Pengaturan warna latar tombol aksi disesuaikan secara manual agar kontras dan selaras dengan tema Material 3 aplikasi.
3. **Validasi Sintaks:** Memastikan seluruh kode bebas dari peringatan atau *error* dengan menjalankan `flutter analyze` secara berkala.

---

## Pertanyaan Reflektif Tugas 7

#### 1. Jelaskan apa yang dimaksud dengan widget tree pada Flutter dan bagaimana hubungan induk-anak (parent-child) bekerja antar-widget!
Widget tree adalah struktur hirarki yang merepresentasikan bagaimana widget-widget disusun dan dirender di dalam aplikasi Flutter. Setiap elemen antarmuka (UI) dibentuk sebagai widget. Hubungan induk-anak (parent-child) bekerja dengan cara widget induk (parent) menampung, mengatur tata letak, serta meneruskan data atau properti ke satu atau lebih widget anak (child), membentuk struktur pohon terstruktur dari root ke cabang-cabang bawah.

#### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya masing-masing!
- **MaterialApp**: Berfungsi sebagai root widget yang membungkus aplikasi dengan desain Material Design dan menyediakan konfigurasi tema global serta navigasi dasar.
- **Scaffold**: Menyediakan kerangka visual dasar Material Design seperti AppBar dan body halaman.
- **AppBar**: Menampilkan bilah navigasi atau header di bagian atas halaman.
- **Padding**: Memberikan ruang jarak (spasi) di sekeliling widget anaknya.
- **Column**: Menyusun widget anak-anaknya secara vertikal (ke bawah).
- **Row**: Menyusun widget anak-anaknya secara horizontal (ke samping).
- **Card**: Memberikan wadah berbentuk kartu dengan efek bayangan (elevasi) yang estetis.
- **Container**: Berfungsi sebagai kotak serbaguna untuk mengatur ukuran, padding, dan warna latar belakang.
- **Text**: Menampilkan teks atau string di antarmuka.
- **SizedBox**: Memberikan jarak kosong dengan ukuran tinggi atau lebar tertentu secara kaku.
- **Center**: Menyelaraskan widget anaknya ke bagian tengah secara otomatis.
- **GridView.count**: Menyusun widget anak dalam bentuk grid (kisi-kisi) dengan jumlah kolom tetap.
- **Material**: Menyediakan material dasar untuk mendefinisikan warna latar dan sudut melengkung.
- **InkWell**: Menambahkan efek sentuh interaktif (*ripple effect*) ketika widget ditekan oleh pengguna.
- **Icon**: Menampilkan ikon visual berbasis Material Icons.

#### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini umumnya digunakan sebagai root widget pada aplikasi Flutter!
Widget MaterialApp berfungsi untuk mengonfigurasi aplikasi agar mendukung standar Material Design (seperti tema warna, navigasi, judul aplikasi, dan *localization*). Widget ini umumnya digunakan sebagai root widget karena menjadi titik awal penyiapan fondasi aplikasi sebelum merender halaman-halaman turunannya.

#### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget! Kapan kita sebaiknya memilih StatelessWidget dan kapan harus menggunakan StatefulWidget?
- **StatelessWidget**: Widget yang sifatnya statis, artinya kondisinya tidak dapat berubah (*immutable*) setelah dirender karena tidak memiliki *state* lokal yang dimutasi.
- **StatefulWidget**: Widget yang dapat berubah dinamis (*mutable*) karena memiliki objek *state* terpisah yang dapat memperbarui antarmuka ketika terjadi perubahan data (misalnya saat ada interaksi pengguna atau pengambilan data jaringan).
- **Pemilihan**: Pilih *StatelessWidget* untuk tampilan statis yang tidak memerlukan perubahan data (seperti halaman menu utama portofolio pada Tugas 7 ini), dan pilih *StatefulWidget* jika halaman membutuhkan pembaruan dinamis secara berkala.

#### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di dalam metode build?
`BuildContext` adalah sebuah objek yang merepresentasikan lokasi sebuah widget di dalam widget tree. Objek ini sangat penting karena memungkinkan widget mengakses informasi tetangga di atasnya, seperti mewarisi tema (`Theme.of(context)`) atau menampilkan notifikasi (`ScaffoldMessenger.of(context)`). Di dalam metode build, `BuildContext context` dilewatkan sebagai parameter wajib untuk merender turunan widget berdasarkan konteks posisinya.

#### 6. Jelaskan konsep hot reload di Flutter dan apa perbedaannya dengan hot restart! Kapan kita tidak bisa hanya mengandalkan hot reload dan harus melakukan hot restart atau full restart?
- **Hot Reload**: Memasukkan file kode yang telah diubah ke dalam *Dart Virtual Machine* (VM) yang sedang berjalan tanpa kehilangan status aplikasi saat ini (sangat cepat).
- **Hot Restart**: Memuat ulang seluruh aplikasi dari awal dan mereset *state* aplikasi kembali ke kondisi semula.
- **Kapan butuh Hot Restart/Full Restart**: Kita tidak bisa mengandalkan *hot reload* ketika mengubah struktur *state* global, mengubah fungsi `main()`, mengubah inisialisasi aplikasi, atau memodifikasi aset statis/konfigurasi *native* (seperti `pubspec.yaml`).

---

## Struktur Proyek Terbaru (Tugas 8)

Setelah penerapan *refactoring* modular dari Tutorial 09 dan penambahan fitur formulir pengalaman pada Tugas 8, struktur direktori proyek saat ini terbagi menjadi `lib/screens/` dan `lib/widgets/`:

```text
myportofolio_mobile/
├── lib/
│   ├── screens/
│   │   ├── menu.dart             # Halaman utama portofolio (MyHomePage), InfoCard, & kartu aksi
│   │   ├── project_form.dart     # Halaman formulir tambah proyek (Tutorial 09)
│   │   └── experience_form.dart  # Halaman formulir tambah pengalaman baru (Tugas 8)
│   ├── widgets/
│   │   ├── left_drawer.dart      # Menu navigasi samping (Home, Add Project, Add Experience)
│   │   └── project_card.dart     # Model ItemHomepage & komponen kartu aksi ItemCard
│   └── main.dart                 # Entry point aplikasi & konfigurasi tema Material 3
├── pubspec.yaml                  # Manifes proyek dan konfigurasi dependensi Flutter
└── README.md                     # Dokumentasi proyek, progres tugas, AI disclosure, & refleksi
```

---

## Progres Pengerjaan (Tugas 8)
- Membuat halaman formulir baru **`ExperienceFormPage`** (`lib/screens/experience_form.dart`) menggunakan `StatefulWidget`, `Form`, dan `GlobalKey<FormState>` dengan lima kolom input (*Posisi/Peran*, *Organisasi/Instansi*, *Kategori Pengalaman*, *Tahun Mulai*, dan *Tautan Dokumentasi*).
- Menerapkan validasi input untuk menolak isian wajib yang kosong atau hanya berisi spasi, memeriksa panjang karakter minimum, memvalidasi rentang tahun mulai, serta memverifikasi format URL opsional (`http://` atau `https://`).
- Menampilkan ringkasan data pengalaman dalam **`AlertDialog`** melalui `showDialog()` setelah seluruh validasi lolos saat tombol **Simpan** ditekan.
- Menambahkan opsi navigasi **Add Experience** pada `LeftDrawer` (`lib/widgets/left_drawer.dart`) dan kartu aksi **Tambah Pengalaman** pada halaman utama (`lib/screens/menu.dart` & `lib/widgets/project_card.dart`) menggunakan `Navigator.push()`.
- Menyesuaikan tata letak halaman utama menggunakan `SingleChildScrollView` dan `childAspectRatio` pada `GridView.count` agar responsif serta bebas dari *overflow* pada layar ponsel maupun Chrome.

---

## AI Disclosure & Analisis Kritis (Tugas 8)

### Tools yang Digunakan
- **Google Gemini:** Digunakan untuk diskusi teknis terkait desain validasi formulir, navigasi antar-layar, penyelesaian peringatan `flutter analyze`, dan penyesuaian *layout*.

### Strategi Prompting & Bagian yang Dibantu
1. **Perancangan Formulir & Validasi:** Meminta referensi struktur `StatefulWidget` untuk `ExperienceFormPage` beserta aturan `validator` pada `TextFormField` dan `DropdownButtonFormField`.
2. **Integrasi Navigasi & Drawer:** Mendiskusikan penggunaan `Navigator.push()` pada kartu aksi serta konsistensi `LeftDrawer` di seluruh halaman.
3. **Debugging Peringatan & Layout:** Meminta analisis terhadap peringatan `deprecated_member_use` serta masalah *bottom overflow* saat aplikasi diuji di Chrome.

### Analisis Kritis Keterbatasan AI & Perbaikan Manual
1. **Penggantian Properti Deprecated:** Saran awal AI menggunakan properti `value` pada `DropdownButtonFormField` di `experience_form.dart` yang memunculkan peringatan `deprecated_member_use` di SDK Flutter lokal. Diperbaiki secara manual menjadi `initialValue` agar `flutter analyze` bersih (`No issues found!`).
2. **Perbaikan Overflow & Proporsi Grid di Chrome:** Tata letak `Column` statis dan rasio kartu *default* pada `GridView.count` menyebabkan *bottom overflow* saat dijalankan di Chrome. Dilakukan perbaikan manual dengan membungkus `body` ke dalam `SingleChildScrollView` serta menyesuaikan `childAspectRatio` agar seluruh kartu dapat dijangkau dengan nyaman.
3. **Penyesuaian Model Data & Validasi:** Aturan validasi tahun dan URL opsional disesuaikan secara manual agar sesuai dengan karakteristik data pengalaman pada portofolio pribadi.

---

### Pertanyaan Reflektif Tugas 8

#### 1. Jelaskan perbedaan antara Navigator.push(), Navigator.pushReplacement(), dan Navigator.pop(). Metode apa yang digunakan untuk membuka formulir dari kartu aksi? Jelaskan juga bagaimana opsi Home di drawer membawa pengguna kembali ke halaman utama.
- **`Navigator.push()`**: Menambahkan rute/halaman baru ke puncak tumpukan navigasi (*navigation stack*), sehingga halaman sebelumnya tetap tersimpan di bawahnya dan pengguna bisa kembali menggunakan tombol *back* bawaan perangkat. Metode ini digunakan untuk membuka formulir (`ProjectFormPage` maupun `ExperienceFormPage`) dari kartu aksi dan opsi formulir di *drawer*.
- **`Navigator.pushReplacement()`**: Mengganti rute aktif yang sedang berada di puncak *stack* dengan rute baru, sehingga halaman lama dihapus dari riwayat tumpukan.
- **`Navigator.pop()`**: Menghapus rute teratas dari *navigation stack* dan mengembalikan tampilan ke rute sebelumnya (juga digunakan untuk menutup `AlertDialog` saat tombol **OK** ditekan).
- **Opsi Home di drawer**: Pada `LeftDrawer`, memilih *ListTile* **Home** menjalankan `Navigator.pushReplacement()` menuju `MyHomePage()`, sehingga pengguna langsung diarahkan kembali ke halaman utama tanpa menumpuk riwayat navigasi berulang.

#### 2. Bagaimana susunan Scaffold, AppBar, dan Drawer membantu menjaga struktur halaman tetap konsisten? Berikan satu contoh penggunaan warna tema portofolio di lebih dari satu halaman.
- `Scaffold` menyediakan kerangka dasar standar Material Design pada setiap halaman, `AppBar` menempatkan judul layar dan tombol pembuka *drawer* di bagian atas secara seragam, sedangkan `Drawer` (`LeftDrawer`) menyediakan menu navigasi samping yang identik di setiap halaman.
- **Contoh penggunaan warna tema**: Warna utama tema (`Theme.of(context).colorScheme.primary` berbasis *seed color* `Colors.indigo`) digunakan secara konsisten pada `AppBar` di halaman utama (`lib/screens/menu.dart`), `AppBar` serta tombol **Simpan** di halaman formulir pengalaman (`lib/screens/experience_form.dart`), dan bagian `DrawerHeader` pada `lib/widgets/left_drawer.dart`.

#### 3. Mengapa tata letak tersebut dipilih untuk formulir? Jelaskan peran widget pengatur jarak dan widget penggulir ketika ruang layar terbatas.
- Susunan `Scaffold` → `SafeArea` → `Form` → `SingleChildScrollView` → `Column` dipilih agar seluruh kolom input tersusun rapi secara vertikal, aman dari area sistem perangkat (*notch*/status bar) berkat `SafeArea`, dan terkelola validasinya dalam satu widget `Form`.
- **Peran widget penggulir (`SingleChildScrollView`)**: Memungkinkan halaman formulir digulir secara vertikal saat ruang tinggi layar terbatas (seperti di layar ponsel sempit atau ketika *soft keyboard* terbuka), sehingga kolom terbawah dan tombol **Simpan** tetap bisa diakses tanpa terpotong.
- **Peran widget pengatur jarak (`SizedBox` dan `padding`)**: Memberikan spasi yang rapi antar-kolom input (`SizedBox(height: 14.0)`), jarak antar-baris ringkasan di `AlertDialog`, serta jarak tepi layar (`EdgeInsets.all(16.0)`) agar elemen tidak saling menempel.

#### 4. Apa peran GlobalKey<FormState>, validator, dan validate() saat tombol Simpan ditekan? Berikan satu contoh nilai yang ditolak oleh validasi dan jelaskan mengapa memilih jenis input atau papan ketik saja belum cukup.
- **`GlobalKey<FormState>`**: Kunci unik yang menghubungkan widget `Form` dengan objek `FormState`-nya sehingga status validasi dan *reset* formulir dapat diakses dari luar *child widget*-nya (seperti saat tombol **Simpan** ditekan).
- **`validator`**: Fungsi pemeriksaan pada tiap kolom (`TextFormField`) yang mengecek apakah input memenuhi aturan validasi (mengembalikan `String` pesan error jika salah, atau `null` jika valid).
- **`validate()`**: Metode pada `_formKey.currentState` yang menjalankan seluruh `validator` di dalam `Form` sekaligus, menampilkan pesan error di bawah kolom terkait jika gagal, dan mengembalikan `true` hanya jika semua kolom valid.
- **Contoh nilai yang ditolak & alasan jenis input/papan ketik saja belum cukup**: Input yang hanya berisi spasi kosong seperti `"   "` pada kolom **Posisi / Peran** atau teks `"contoh-tanpa-http"` pada kolom **Tautan Dokumentasi** akan ditolak oleh `validator`. Pemilihan jenis papan ketik (seperti `TextInputType.number` atau `TextInputType.url`) hanya menyesuaikan tata letak tombol keyboard demi kemudahan mengetik, tetapi tidak dapat mencegah pengguna membiarkan kolom kosong, mengetik spasi saja, melakukan *copy-paste* teks sembarang, atau memasukkan tahun di luar rentang yang wajar.