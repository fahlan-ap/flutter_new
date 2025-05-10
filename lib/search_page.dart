import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          // Menggunakan Container untuk membuat area search bar
          decoration: BoxDecoration(
            color: Colors.white, // Warna background search bar
            borderRadius: BorderRadius.circular(24.0), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Warna shadow
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3), // Pergeseran shadow (x, y)
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey), // Ikon search
                SizedBox(width: 8.0), // Spasi antara ikon dan teks
                Expanded(
                  child: Text(
                    'Search...', // Teks placeholder
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
