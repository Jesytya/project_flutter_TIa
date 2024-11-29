import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/detail.dart';
import 'API.dart';

class Doa extends StatefulWidget {
  const Doa({Key? key}) : super(key: key);

  @override
  State<Doa> createState() => _DoaState();
}

class _DoaState extends State<Doa> {
  Future<List<dynamic>> _fetchData() async {
    var hasil = await http.get(Uri.parse(BaseUrl.doa3));
    var data = json.decode(hasil.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/474x/ed/da/ef/eddaef0e5029aa3aa6b9f3d77a5df8fe.jpg', // Ganti dengan URL gambar latar
            ),
            fit: BoxFit.cover, // Menyesuaikan gambar dengan layar
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Color(0xfffbf8fc),
              title: const Text(
                "Do'a",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Color(0xffa58ef6)),
              ),
              centerTitle: true,
              elevation: 0, // Hilangkan bayangan AppBar
            ),
            Expanded(
              child: FutureBuilder<List<dynamic>>(
                future: _fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(
                                  doa: snapshot.data![index]['doa'],
                                  ayat: snapshot.data![index]['ayat'],
                                  latin: snapshot.data![index]['latin'],
                                  artinya: snapshot.data![index]['artinya'],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 5,
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                // Mengganti dengan ClipOval untuk bentuk lingkaran
                                ClipOval(
                                  child: Image.network(
                                    // Ganti dengan URL gambar yang sesuai dengan data
                                    snapshot.data![index]['image_url'] ??
                                        'https://i.pinimg.com/736x/44/58/72/4458728d35c46bd4199f4293b6b808ad.jpg', // Ganti dengan data gambar yang sesuai
                                    width: 50, // Tentukan lebar gambar
                                    height: 50, // Tentukan tinggi gambar
                                    fit: BoxFit
                                        .cover, // Mengatur gambar agar pas
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Text(
                                    snapshot.data![index]['doa'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
