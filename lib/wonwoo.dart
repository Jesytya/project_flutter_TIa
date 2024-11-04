import 'package:flutter/material.dart';

class Wonwoo extends StatelessWidget {
  const Wonwoo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Wonwoo", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/474x/9f/2d/bf/9f2dbf6306741e7f4fec1265d4c661d2.jpg")),
          Row(children: [
            Expanded(
                child: Text("Dino",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Jeon Won-woo (Korean: 전원우; born July 17, 1996), known mononymously as Wonwoo (원우), is a South Korean singer and rapper. Managed by Pledis Entertainment, he is a member of the idol group Seventeen and its subunit JxW.")
        ],
      ),
    );
  }
}
