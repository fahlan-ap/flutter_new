import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 40,
              child: Icon(Icons.person, size: 40),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('email@example.com'),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Favorit Saya'),
              subtitle: Text('Lihat daftar jamur favorit Anda'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              subtitle: Text('Ubah preferensi aplikasi'),
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text('Tentang Aplikasi'),
              subtitle: Text('Versi 1.0.0'),
            ),
          ],
        ),
      ),
    );
  }
}
