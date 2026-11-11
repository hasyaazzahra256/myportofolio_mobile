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

### Tugas 7

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
- **Pemilihan**: Pilih *StatelessWidget* untuk tampilan statis yang tidak memerlukan perubahan data (seperti halaman menu utama portofolio ini), dan pilih *StatefulWidget* jika halaman membutuhkan pembaruan dinamis secara berkala.

#### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di dalam metode build?
`BuildContext` adalah sebuah objek yang merepresentasikan lokasi sebuah widget di dalam widget tree. Objek ini sangat penting karena memungkinkan widget mengakses informasi tetangga di atasnya, seperti mewarisi tema (`Theme.of(context)`) atau menampilkan notifikasi (`ScaffoldMessenger.of(context)`). Di dalam metode build, `BuildContext context` dilewatkan sebagai parameter wajib untuk merender turunan widget berdasarkan konteks posisinya.

#### 6. Jelaskan konsep hot reload di Flutter dan apa perbedaannya dengan hot restart! Kapan kita tidak bisa hanya mengandalkan hot reload dan harus melakukan hot restart atau full restart?
- **Hot Reload**: Memasukkan file kode yang telah diubah ke dalam *Dart Virtual Machine* (VM) yang sedang berjalan tanpa kehilangan status aplikasi saat ini (sangat cepat).
- **Hot Restart**: Memuat ulang seluruh aplikasi dari awal dan mereset *state* aplikasi kembali ke kondisi semula.
- **Kapan butuh Hot Restart/Full Restart**: Kita tidak bisa mengandalkan *hot reload* ketika mengubah struktur *state* global, mengubah fungsi `main()`, mengubah inisialisasi aplikasi, atau memodifikasi aset statis/konfigurasi *native* (seperti `pubspec.yaml`).
