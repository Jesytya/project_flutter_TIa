import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/API.dart';
import 'package:latihan/Home.dart';
import 'package:latihan/register.dart';

import 'add.dart';
import 'bottom.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() async {
    try {
      final response = await http.get(Uri.parse(BaseUrl.login));
      if (response.statusCode == 200) {
        final List<dynamic> users = json.decode(response.body);
        final user = users.firstWhere(
            (user) =>
                user['username'] == usernameController.text &&
                user['password'] == passwordController.text,
            orElse: () => null);
        if (user != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Bottom()),
          );
        } else {
          _showDialog("Gagal", "Username atau password salah!");
        }
      } else {
        _showDialog("Gagal", "Terjadi kesalahan. Coba lagi nanti.");
      }
    } catch (e) {
      _showDialog("Error", "Tidak dapat menghubungkan ke server.");
    }
  }

  void _showDialog(String title, String content) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('OK'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff004080), Color(0xff001f40)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Avatar
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 60, color: Colors.blueAccent),
                ),
                const SizedBox(height: 30),

                // Title
                const Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Username Field
                TextField(
                  controller: usernameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    labelText: "Username",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.person, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),

                // Password Field
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.lock, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 30),

                // Login Button
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    icon: const Icon(Icons.login_rounded, color: Colors.white),
                    label: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Register Link
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: const Text(
                    "Buat Akun!",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
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
