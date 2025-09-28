import 'package:flutter/material.dart';

class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Aplikasi Demo Form Mahasiswa\n\nVersi 1.0.0\n'
          'Aplikasi ini digunakan untuk demo input dan daftar mahasiswa.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}