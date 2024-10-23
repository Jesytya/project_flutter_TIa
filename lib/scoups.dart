import 'package:flutter/material.dart';

class Scoups extends StatelessWidget {
  const Scoups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("S.coups", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/enabled/474x/da/c4/34/dac4346a9ec858a152e440178e4ca951.jpg")),
          Text("S.Coups", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Deskripsi")
        ],
      ),
    );
  }
}
