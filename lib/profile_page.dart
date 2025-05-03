import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    // Tentukan theme lokal (light/dark)
    final ThemeData localTheme = _isDarkTheme
        ? ThemeData.dark(useMaterial3: true)
        : ThemeData.light(useMaterial3: true);

    return Theme(
      data: localTheme,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: localTheme.colorScheme.secondaryContainer,
                child: Icon(Icons.person, size: 40, color: localTheme.colorScheme.onSecondaryContainer),
              ),
              const SizedBox(height: 16),
              Text(
                'Nama Pengguna',
                style: localTheme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text('email@example.com', style: localTheme.textTheme.bodyMedium),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 8),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Favorit Saya'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Pengaturan'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Tentang Aplikasi'),
                subtitle: const Text('Versi 1.0.0'),
                onTap: () {},
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _isDarkTheme = !_isDarkTheme;
                  });
                },
                icon: Icon(_isDarkTheme ? Icons.light_mode : Icons.dark_mode),
                label: Text(_isDarkTheme ? 'Light Mode' : 'Dark Mode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
