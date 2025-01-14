import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header dengan Gradien
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff6A11CB), Color(0xffa58ef6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: const NetworkImage(
                    "https://i.pinimg.com/474x/a8/5c/a7/a85ca7421e56ead12cf8ef6b8cc956d3.jpg", // URL gambar profil
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Jesy Wintiya Wulandari", // Ganti dengan nama pengguna
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "jesywintiya@gmail.com", // Ganti dengan email pengguna
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Informasi Profil
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildInfoTile(
                  icon: Icons.school,
                  title: "School",
                  subtitle: "Universitas Teknologi Mataram",
                ),
                _buildInfoTile(
                  icon: Icons.person,
                  title: "Nick Name",
                  subtitle: "Tiya",
                ),
                _buildInfoTile(
                  icon: Icons.person_add_alt,
                  title: "Instagram",
                  subtitle: "@jesywntiya_0 ",
                ),
                _buildInfoTile(
                  icon: Icons.phone,
                  title: "Number",
                  subtitle: "+62 877 6261 5225",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xffE8EAF6),
          child: Icon(icon, color: const Color(0xff6A11CB)),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ),
    );
  }
}
