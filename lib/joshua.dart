import 'package:flutter/material.dart';

class Joshua extends StatelessWidget {
  const Joshua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Joshua", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/enabled/474x/1e/c0/69/1ec069cd8e3ce01f9fd097b1b08b0726.jpg")),
          Row(children: [
            Expanded(
                child: Text("Joshua",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Joshua Hong (born December 30, 1995), known mononymously as Joshua (Korean: 조슈아), is an American singer and dancer based in South Korea. Managed by Pledis Entertainment, he is a member of the idol group Seventeen.")
        ],
      ),
    );
  }
}
