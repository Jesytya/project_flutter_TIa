import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/API.dart';

import 'Kisah.dart';

class Edit extends StatefulWidget {
  final String? id;
  Edit({Key? key, this.id}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  final nameController = TextEditingController();
  final imageController = TextEditingController();
  final descriptionController = TextEditingController();
  final kisahController = TextEditingController();
  final kisah2Controller = TextEditingController();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData(); // Fetch data for the specific item to edit
  }

  Future<void> _fetchData() async {
    try {
      final response =
          await http.get(Uri.parse(BaseUrl.kisah + "/" + widget.id!));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          nameController.text = data['name'];
          imageController.text = data['image'];
          descriptionController.text = data['description'];
          kisahController.text = data['kisah'];
          kisah2Controller.text = data['kisah2'];
          isLoading = false;
        });
      } else {
        _showDialog("Error", "Gagal memuat data.");
      }
    } catch (e) {
      _showDialog("Error", "Terjadi kesalahan saat memuat data.");
    }
  }

  void _edit() async {
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
      final response = await http.put(
        Uri.parse(BaseUrl.edit + "/" + '${widget.id}'),
        body: {
          'name': nameController.text,
          'image': imageController.text,
          'description': descriptionController.text,
          'kisah': kisahController.text,
          'kisah2': kisah2Controller.text,
        },
      );

      if (response.statusCode == 200) {
        _showDialog("Berhasil", "Edit Berhasil!", success: true);
      } else {
        _showDialog("Gagal", "Edit Gagal. Coba lagi.");
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
                  context,
                  MaterialPageRoute(builder: (_) => Kisah()),
                );
              }
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
        backgroundColor: Colors.blueAccent,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blueAccent,
                        child:
                            Icon(Icons.person, size: 60, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                        controller: nameController,
                        label: "name",
                        icon: Icons.book),
                    const SizedBox(height: 15),
                    _buildTextField(
                        controller: imageController,
                        label: "image",
                        icon: Icons.image),
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
                      onPressed: _edit,
                      icon: Icon(Icons.save),
                      label:
                          Text("Save", style: TextStyle(color: Colors.white)),
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

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool isObscure = false,
  }) {
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
