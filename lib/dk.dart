import 'package:flutter/material.dart';

class DK extends StatelessWidget {
  const DK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("DK", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/0b/63/8b/0b638b98926dd31e96e7da50e9c901d5.jpg")),
          Row(children: [
            Expanded(
                child:
                    Text("DK", style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Lee Seok-min (Korean: 이석민; born February 18, 1997), professionally known as Dokyeom (도겸) or DK for short, is a South Korean singer managed by Pledis Entertainment. He is a member of the boy group Seventeen, its Vocal Team, and the leader of its sub-unit BSS with Hoshi and Seungkwan.")
        ],
      ),
    );
  }
}
