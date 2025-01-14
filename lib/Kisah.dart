import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/detail.dart';
import 'API.dart';
import 'add.dart';
import 'edit.dart';

class Kisah extends StatefulWidget {
  const Kisah({Key? key}) : super(key: key);

  @override
  State<Kisah> createState() => _KisahState();
}

class _KisahState extends State<Kisah> {
  Future<List<dynamic>> _fetchData() async {
    var hasil = await http.get(Uri.parse(BaseUrl.kisah));
    var data = json.decode(hasil.body);
    return data;
  }

  Future<void> _delete(int id) async {
    try {
      var response = await http.delete(Uri.parse('${BaseUrl.kisah}/$id'));
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data berhasil dihapus')),
        );
        setState(() {}); // Refresh data setelah berhasil menghapus
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Gagal menghapus data')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Terjadi kesalahan saat menghapus data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/474x/ed/da/ef/eddaef0e5029aa3aa6b9f3d77a5df8fe.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color(0xfffbf8fc),
              title: const Text(
                "Kisah Dan Sejarah Nabi Dan Sahabat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Color(0xffa58ef6),
                ),
              ),
              centerTitle: true,
              elevation: 0,
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
                                  name: snapshot.data![index]['name'],
                                  image: snapshot.data![index]['image'],
                                  description: snapshot.data![index]
                                      ['description'],
                                  kisah: snapshot.data![index]['kisah'],
                                  kisah2: snapshot.data![index]['kisah2'],
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
                                ClipOval(
                                  child: Image.network(
                                    snapshot.data![index]['image_url'] ??
                                        'https://i.pinimg.com/736x/44/58/72/4458728d35c46bd4199f4293b6b808ad.jpg',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Text(
                                    snapshot.data![index]['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                PopupMenuButton<String>(
                                  onSelected: (value) {
                                    if (value == 'edit') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Edit(
                                            id: snapshot.data![index]['id'],
                                          ),
                                        ),
                                      );
                                    } else if (value == 'delete') {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text("Konfirmasi"),
                                          content: const Text(
                                              "Apakah Anda yakin ingin menghapus data ini?"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Batal"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                _delete(snapshot.data![index]
                                                    ['id']);
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Hapus",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                  itemBuilder: (context) => [
                                    const PopupMenuItem(
                                      value: 'edit',
                                      child: Text('Edit'),
                                    ),
                                    const PopupMenuItem(
                                      value: 'delete',
                                      child: Text('Hapus'),
                                    ),
                                  ],
                                  icon: const Icon(Icons.more_vert),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Add()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
