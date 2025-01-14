import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'API.dart';

class Hapus extends StatelessWidget {
  final int id;

  const Hapus({Key? key, required this.id}) : super(key: key);

  Future<void> _deleteDoa(BuildContext context) async {
    try {
      var response = await http.delete(Uri.parse('${BaseUrl.kisah}/$id'));
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data berhasil dihapus')),
        );
        Navigator.pop(
            context, true); // Return true to indicate successful deletion
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Gagal menghapus data')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Terjadi kesalahan saat menghapus')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Konfirmasi"),
      content: const Text("Apakah Anda yakin ingin menghapus data ini?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Tutup dialog tanpa aksi
          },
          child: const Text("Batal"),
        ),
        TextButton(
          onPressed: () {
            _deleteDoa(context); // Hapus data dan tutup dialog
          },
          child: const Text(
            "Hapus",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
