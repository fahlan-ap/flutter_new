import 'package:flutter/material.dart';
import 'search_page.dart';
import 'profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const MushroomHomePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ensiklopedia Jamur'),
        backgroundColor: const Color.fromARGB(255, 145, 99, 224),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 93, 0, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}

class MushroomHomePage extends StatelessWidget {
  const MushroomHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text(
          'Selamat Datang di Ensiklopedia Jamur',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Text(
          'Aplikasi ini membantu Anda mengenal berbagai jenis jamur yang ditemukan di alam. '
          'Pelajari ciri-ciri, habitat, dan manfaat dari jamur yang umum hingga langka.',
        ),
        SizedBox(height: 24),
        Text(
          'Contoh Jamur Populer:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 12),
        Text('- Jamur Tiram'),
        Text('- Jamur Kancing'),
        Text('- Jamur Shiitake'),
        Text('- Jamur Enoki'),
        Text('- Jamur Kuping'),
      ],
    );
  }
}
