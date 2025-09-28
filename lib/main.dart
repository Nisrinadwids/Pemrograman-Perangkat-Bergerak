import 'package:flutter/material.dart';
import 'form_mahasiswa.dart';
import 'daftar_mahasiswa.dart';
import 'tentang_aplikasi.dart';
import 'pengaturan.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Form Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Utama (Drawer)')),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Demo Form Mahasiswa'),
              accountEmail: Text('v1.0.0'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.school, color: Colors.indigo),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Form Mahasiswa'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FormMahasiswaPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text('Daftar Mahasiswa'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const DaftarMahasiswaPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TentangAplikasiPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PengaturanPage()));
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Tap menu di kiri atas untuk membuka Drawer.'),
      ),
    );
  }
}