import 'package:flutter/material.dart';
import 'package:latihan/Sholawat.dart';
import 'Doa.dart';
import 'Dzikir.dart';
import 'Yasin.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Header dengan lengkungan
          Container(
            height: 250,
            decoration: const BoxDecoration(
              color: Color(0xff6c2cc1), // Warna biru
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 40),
                  Text(
                    "Do'a & Dzikir",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Last update: 25 Nov 2024",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Grid tombol di bawah header
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildDashboardItem(
                  icon: Icons.book,
                  label: "Do'a",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Doa()),
                    );
                  },
                ),
                _buildDashboardItem(
                  icon: Icons.mosque,
                  label: "Dzikir",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Dzikir()),
                    );
                  },
                ),
                _buildDashboardItem(
                  icon: Icons.menu_book,
                  label: "Sholawat",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sholawat()),
                    );
                  },
                ),
                _buildDashboardItem(
                  icon: Icons.library_music,
                  label: "Yasin",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Yasin()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk setiap item dashboard
  Widget _buildDashboardItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: const Color(0xffa58ef6),
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffa58ef6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
