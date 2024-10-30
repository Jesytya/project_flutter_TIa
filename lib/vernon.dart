import 'package:flutter/material.dart';

class Vernon extends StatelessWidget {
  const Vernon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Vernon", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/enabled/474x/a8/77/c3/a877c374dc4d04abc5a440f021f4bb83.jpg")),
          Row(children: [
            Expanded(
                child: Text("Vernon",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Hansol Vernon Chwe (Korean: 최한솔; born February 18, 1998), known mononymously as Vernon (버논), is a South Korean and American rapper, singer and songwriter. He is a member of the South Korean boy band Seventeen under Pledis Entertainment. Vernon released his first solo mixtape, Black Eye, on December 27, 2022.Aside from his work with Seventeen and for himself, he has written and produced music with and for other artists such as Jamie, Bumzu, and Charli XCX.")
        ],
      ),
    );
  }
}
