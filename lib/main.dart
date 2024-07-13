import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hitung Cepat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

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
        title: const Text('Macam-macam alat pengukur waktu'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Ubah sesuai keinginan Anda
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Image.asset(
                  images[index]['path']!,
                  fit: BoxFit.cover,
                  height: 250,
                ),
                const SizedBox(height: 16),
                Text(
                  images[index]['description']!,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
