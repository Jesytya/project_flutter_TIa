import 'package:flutter/material.dart';

class Jeonghan extends StatelessWidget {
  const Jeonghan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title:
              Text("Jeonghan", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/04/0e/11/040e1143307a96aa606c6dac22b2f206.jpg")),
          Row(children: [
            Expanded(
                child: Text("Jeonghan",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Yoon Jeong-han (Korean: 윤정한, born on October 4, 1995), better known mononymously as Jeonghan (정한) is a South Korean singer under Pledis Entertainment. He is a member of the South Korean boy group Seventeen, its Vocal team, and its subunit JxW.")
        ],
      ),
    );
  }
}
