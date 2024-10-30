import 'package:flutter/material.dart';

class Hoshi extends StatelessWidget {
  const Hoshi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Hoshi", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/474x/3a/4e/8a/3a4e8a10534bf588a227d5f0e54d3ba3.jpg")),
          Row(children: const [
            Expanded(
                child: Text("Hoshi",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Kwon Soon-young (Korean: 권순영; born June 15, 1996), professionally known as Hoshi (Korean: 호시), is a South Korean singer and dancer. Managed by Pledis Entertainment, he is a member of the boy group Seventeen, the leader of its performance team,and part of its subunit BSS. Hoshi released his first solo mixtape, Spider, on April 2, 2021.")
        ],
      ),
    );
  }
}
