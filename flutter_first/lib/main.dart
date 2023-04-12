// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // Widget ini adalah root dari aplikasi Anda.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // Ini adalah tema aplikasi Anda.
//         //
//         // Coba jalankan aplikasi Anda dengan "flutter run". Anda akan melihat
//         // aplikasi memiliki bilah alat berwarna biru. Kemudian, tanpa keluar dari aplikasi, coba
//         // mengubah primarySwatch di bawah menjadi Colors.green lalu aktifkan
//         // "hot reload" (tekan "r" di konsol tempat Anda menjalankan "flutter run",
//         // atau cukup simpan perubahan Anda ke "hot reload" di Flutter IDE).
//         // Perhatikan bahwa penghitung tidak direset kembali ke nol; aplikasi
//         // tidak dimulai ulang.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // Widget ini adalah beranda aplikasi Anda. Itu stateful, artinya
//   // bahwa ia memiliki objek Status (didefinisikan di bawah) yang berisi bidang yang memengaruhi
//   // bagaimana tampilannya.

//   // Kelas ini adalah konfigurasi untuk negara bagian. Ini memegang nilai-nilai (dalam hal ini
//   // ganti judul) yang disediakan oleh induk (dalam hal ini widget Aplikasi) dan
//   // digunakan oleh metode build Negara. Bidang dalam subkelas Widget adalah
//   // selalu ditandai "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // Panggilan ke setState ini memberi tahu framework Flutter bahwa ada sesuatu
//       // diubah dalam keadaan ini, yang menyebabkannya menjalankan kembali metode build di bawah
//       // sehingga tampilan dapat mencerminkan nilai yang diperbarui. Jika kita berubah
//       // _counter tanpa memanggil setState(), maka metode build tidak akan
//       // menelepon lagi, dan sepertinya tidak ada yang terjadi.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Metode ini dijalankan ulang setiap kali setState dipanggil, misalnya selesai
//     // dengan metode _incrementCounter di atas.
//     //
//     // Framework Flutter telah dioptimalkan untuk menjalankan kembali metode build
//     // cepat, sehingga Anda bisa membangun kembali apa saja yang perlu diperbarui
//     // daripada harus mengubah instance widget satu per satu.
//     return Scaffold(
//       appBar: AppBar(
//         // Di sini kita mengambil nilai dari objek MyHomePage yang dibuat oleh
//         // metode App.build, dan gunakan untuk menyetel judul appbar kita.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Tengah adalah widget tata letak. Dibutuhkan satu anak dan memposisikannya
//         // di tengah induk.
//         child: Column(
//           // Kolom juga merupakan widget tata letak. Dibutuhkan daftar anak-anak dan
//           // mengaturnya secara vertikal. Secara default, ini menyesuaikan ukurannya sendiri
//           // anak secara horizontal, dan berusaha setinggi induknya.
//           //
//           // Aktifkan "debug painting" (tekan "p" di konsol, pilih
//           // Tindakan "Toggle Debug Paint" dari Flutter Inspector di Android
//           // Studio, atau perintah "Toggle Debug Paint" di Visual Studio Code)
//           // untuk melihat gambar rangka untuk setiap widget.
//           //
//           // Kolom memiliki berbagai properti untuk mengontrol bagaimana ukurannya sendiri dan
//           // bagaimana memposisikan anak-anaknya. Di sini kita menggunakan mainAxisAlignment untuk
//           // pusatkan anak-anak secara vertikal; sumbu utama di sini adalah vertikal
//           // sumbu karena Kolom vertikal (sumbu silang akan menjadi
//           // mendatar).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // Koma tambahan ini membuat pemformatan otomatis lebih baik untuk metode build.
//     );
//   }
// }


import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'titleee',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('appbar'),
        ),
        body: const Center(
          child: Text('boddyyy'),
        ),
      ),
    );
  }
}