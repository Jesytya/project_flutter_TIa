import 'package:flutter/material.dart';

class Dino extends StatelessWidget {
  const Dino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Dino", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/474x/cd/88/18/cd8818c10ffbd8661f5b2838705ebb7a.jpg")),
          Row(children: [
            Expanded(
                child: Text("Dino",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Lee Chan (Korean: 이찬; born February 11, 1999), known by his stage name Dino (디노), is a South Korean singer and dancer. Managed by Pledis Entertainment, he is a member of the idol group Seventeen. Dino released his first solo mixtape, Wait, on November 27, 2023.")
        ],
      ),
    );
  }
}
