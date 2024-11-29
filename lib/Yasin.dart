import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'API.dart';

class Yasin extends StatefulWidget {
  const Yasin({Key? key}) : super(key: key);

  @override
  State<Yasin> createState() => _YasinState();
}

class _YasinState extends State<Yasin> {
  List<dynamic> ayat = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAyat();
  }

  Future<void> _fetchAyat() async {
    final response =
        await http.get(Uri.parse(BaseUrl.yasin)); // Ganti dengan URL API Anda
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        ayat = data['ayat'];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Gagal memuat data")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Surah Yasin"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: ayat.length,
              itemBuilder: (context, index) {
                final item = ayat[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Ayat Arab
                      Text(
                        item['arab'],
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Ayat Latin
                      Text(
                        item['latin'],
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Arti Ayat
                      Text(
                        item['arti'],
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
