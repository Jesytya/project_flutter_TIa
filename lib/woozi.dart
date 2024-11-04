import 'package:flutter/material.dart';

class Woozi extends StatelessWidget {
  const Woozi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Woozi", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/474x/17/f4/3a/17f43a6f2beaa3ae3fa61109450d790e.jpg")),
          Row(children: [
            Expanded(
                child: Text("Dino",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Lee Ji-hoon (Korean: 이지훈; born November 22, 1996), better known by his stage name Woozi (Korean: 우지), is a South Korean singer, songwriter and record producer. He is a member of the boy band Seventeen. Aside from his work as a soloist and with Seventeen, Woozi has also written for other K-pop artists such as NU'EST W, Ailee, and I.O.I.")
        ],
      ),
    );
  }
}
