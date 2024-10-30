import 'package:flutter/material.dart';

class Seungkuan extends StatelessWidget {
  const Seungkuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title:
              Text("Seungkuan", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/474x/e0/d8/10/e0d810cd722cb8f43a02773a21471ddb.jpg")),
          Row(children: [
            Expanded(
                child: Text("Seungkuan",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Boo Seung-kwan (Korean: 부승관; born January 16, 1998),[2] better known mononymously as Seungkwan, is a South Korean singer and entertainer under Pledis Entertainment. He is a member of the South Korean boy group Seventeen and is a member of the Vocal team subunit. He is also part of the special unit BSS alongside Hoshi and DK. Apart from his group's activities, Seungkwan is known as an entertainment figure for his active participation in Korean variety shows such as Unexpected Q, Prison Life of Fools, and Idol Dictation Contest.")
        ],
      ),
    );
  }
}
