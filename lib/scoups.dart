import 'package:flutter/material.dart';

class Scoups extends StatelessWidget {
  const Scoups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("S.coups",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/enabled/474x/da/c4/34/dac4346a9ec858a152e440178e4ca951.jpg")),
          Row(children: [
            Expanded(
                child: Text("S.Coups",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Choi Seung-cheol (Korean: 최승철; born August 8, 1995), professionally known by his stage name S.Coups (에스쿱스), is a South Korean rapper, singer and songwriter. Managed by Pledis Entertainment, he is the leader of the boy group Seventeen, and also the leader of its hip hop team.")
        ],
      ),
    );
  }
}
