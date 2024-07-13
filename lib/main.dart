import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hitung Cepat', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema aplikasi
      ),
      home: const MyHomePage(), // Halaman utama aplikasi
    );
  }
}

// Halaman utama aplikasi
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar gambar dan deskripsi
    final List<Map<String, String>> images = [
      {'path': 'assets/foto1.jpg', 'description': 'Jam 1'},
      {'path': 'assets/foto2.jpg', 'description': 'Jam 2'},
      {'path': 'assets/foto1.jpg', 'description': 'Jam 3'},
      {'path': 'assets/foto2.jpg', 'description': 'Jam 4'},
      {'path': 'assets/foto1.jpg', 'description': 'Jam 5'},
      {'path': 'assets/foto2.jpg', 'description': 'Jam 6'},
      {'path': 'assets/foto1.jpg', 'description': 'Jam 7'},
      {'path': 'assets/foto2.jpg', 'description': 'Jam 8'},
      {'path': 'assets/foto1.jpg', 'description': 'Jam 9'},
      {'path': 'assets/foto2.jpg', 'description': 'Jam 10'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Macam-macam alat pengukur waktu'), // Judul halaman
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom grid
        ),
        itemCount: images.length, // Jumlah item dalam daftar
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.asset(
                  images[index]['path']!, // Menampilkan gambar
                  fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran kotak
                  height: 160, // Tinggi gambar
                ),
                const SizedBox(height: 12), // Memberi jarak antara gambar dan teks
                Text(
                  images[index]['description']!, // Menampilkan deskripsi gambar
                  style: Theme.of(context).textTheme.labelLarge, // Gaya teks
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
