import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/API.dart';
import 'package:latihan/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final alamatController = TextEditingController();
  final imageController = TextEditingController();

  void _register() async {
    // Validasi form sebelum dikirim
    if (usernameController.text.isEmpty ||
        passwordController.text.isEmpty ||
        emailController.text.isEmpty ||
        alamatController.text.isEmpty ||
        imageController.text.isEmpty) {
      _showDialog("Gagal", "Semua field wajib diisi.");
      return;
    }

    try {
      final response = await http.post(Uri.parse(BaseUrl.register), body: {
        'username': usernameController.text,
        'password': passwordController.text,
        'email': emailController.text,
        'alamat': alamatController.text,
        'image': imageController.text
      });

      if (response.statusCode == 201) {
        _showDialog("Berhasil", "Register Berhasil!", success: true);
      } else {
        _showDialog("Gagal", "Register Gagal. Coba lagi.");
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
                      context, MaterialPageRoute(builder: (_) => Login()));
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
        title: Text("Register"),
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
                  controller: usernameController,
                  label: "Username",
                  icon: Icons.person),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: passwordController,
                  label: "Password",
                  icon: Icons.lock,
                  isObscure: true),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: emailController,
                  label: "Email",
                  icon: Icons.email),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: alamatController,
                  label: "Alamat",
                  icon: Icons.location_on),
              const SizedBox(height: 15),
              _buildTextField(
                  controller: imageController,
                  label: "Image URL",
                  icon: Icons.image),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: _register,
                icon: Icon(Icons.app_registration),
                label: Text("Register", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Sudah punya akun? Login di sini",
                  style: TextStyle(color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                ),
              ),
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
