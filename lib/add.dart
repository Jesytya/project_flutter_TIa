import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/API.dart';
import 'Kisah.dart';
import 'package:latihan/login.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final nameController = TextEditingController();
  final imageController = TextEditingController();
  final descriptionController = TextEditingController();
  final kisahController = TextEditingController();
  final kisah2Controller = TextEditingController();

  void _add() async {
    // Validasi form sebelum dikirim
    if (nameController.text.isEmpty ||
        imageController.text.isEmpty ||
        descriptionController.text.isEmpty ||
        kisahController.text.isEmpty ||
        kisah2Controller.text.isEmpty) {
      _showDialog("Gagal", "Semua field wajib diisi.");
      return;
    }

    try {
      final response = await http.post(Uri.parse(BaseUrl.add), body: {
        'name': nameController.text,
        'image': imageController.text,
        'description': descriptionController.text,
        'kisah': kisahController.text,
        'kisah2': kisahController.text,
      });

      if (response.statusCode == 201) {
        _showDialog("Berhasil", "Add Berhasil!", success: true);
      } else {
        _showDialog("Gagal", "Add Gagal. Coba lagi.");
      }
    } catch (e) {
      _showDialog("Error", "Terjadi kesalahan koneksi.");
    }
  }

  void _showDialog(String title, String content, {bool success = false}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                if (success) {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Kisah()));
                }
              },
              child: Text('OK'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.person, size: 60, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField(
                  controller: nameController, label: "name", icon: Icons.book),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: imageController,
                  label: "image",
                  icon: Icons.book),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: descriptionController,
                  label: "description",
                  icon: Icons.book),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: kisahController,
                  label: "kisah",
                  icon: Icons.book),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: kisah2Controller,
                  label: "kisah2",
                  icon: Icons.book),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: _add,
                icon: Icon(Icons.save_as),
                label: Text("Add", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller,
      required String label,
      required IconData icon,
      bool isObscure = false}) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
