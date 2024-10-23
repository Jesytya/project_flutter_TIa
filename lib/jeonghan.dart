import 'package:flutter/material.dart';

class Jeonghan extends StatelessWidget {
  const Jeonghan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Jeonghan", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/04/0e/11/040e1143307a96aa606c6dac22b2f206.jpg")),
          Text("Jeonghan", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Deskripsi")
        ],
      ),
    );
  }
}
