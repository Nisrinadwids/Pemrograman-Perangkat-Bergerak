import 'package:flutter/material.dart';

class DaftarMahasiswaPage extends StatelessWidget {
  const DaftarMahasiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // contoh data dummy
    final mahasiswa = [
      {
        'nama': 'Nisrina Dwi',
        'nim': '20041001',
        'fakultas': 'Fakultas Ilmu Komputer',
        'prodi': 'Informatika',
        'email': 'nisrina@mail.com',
        'hp': '081234567234',
        'alamat': 'Jl. Pelangi No. 15'
      },
      {
        'nama': 'Devina Sari',
        'nim': '20041002',
        'fakultas': 'Fakultas Ekonomi & Bisnis',
        'prodi': 'Manajemen',
        'email': 'devina@mail.com',
        'hp': '082134565647',
        'alamat': 'Jl. Sanur No. 23'
      },
      {
        'nama': 'Indah Ayu',
        'nim': '20041003',
        'fakultas': 'Fakultas Ilmu Sosial & Politik',
        'prodi': 'Ilmu Komunikasi',
        'email': 'indah@mail.com',
        'hp': '083134562541',
        'alamat': 'Jl. Penggalang No. 8'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Mahasiswa')),
      body: mahasiswa.isEmpty
          ? const Center(child: Text('Belum ada data mahasiswa'))
          : ListView.builder(
              itemCount: mahasiswa.length,
              itemBuilder: (context, index) {
                final m = mahasiswa[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: ListTile(
                    leading: const Icon(Icons.person, size: 40),
                    title: Text(
                      m['nama']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("NIM: ${m['nim']}"),
                        Text("Fakultas: ${m['fakultas']}"),
                        Text("Prodi: ${m['prodi']}"),
                        Text("Email: ${m['email']}"),
                        Text("HP: ${m['hp']}"),
                        Text("Alamat: ${m['alamat']}"),
                      ],
                    ),
                    isThreeLine: true,
                  ),
                );
              },
            ),
    );
  }
}