import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f2ff),
      appBar: AppBar(
        backgroundColor: Color(0xffa58ef6),
        title: Text("Music", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
