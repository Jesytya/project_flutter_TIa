import 'package:flutter/material.dart';

class Minghao extends StatelessWidget {
  const Minghao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title:
              Text("Minghao", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/564x/76/4a/b3/764ab31ebdde4019f15d6e62ca06f725.jpg")),
          Row(children: [
            Expanded(
                child: Text("Dino",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Xu Minghao (Chinese: 徐明浩; Korean: 서명호; born 7 November 1997), known professionally as The8, is a Chinese singer and dancer based in South Korea. He is a member of the South Korean boy band Seventeen and its subunit Performance Team. In 2019, he had his official solo debut and served as one of the two dance mentors in the Chinese survival show Youth With You.")
        ],
      ),
    );
  }
}
