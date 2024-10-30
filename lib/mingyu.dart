import 'package:flutter/material.dart';

class Mingyu extends StatelessWidget {
  const Mingyu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title: Text("Mingyu", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/236x/2b/d9/92/2bd992b88cb069f09f7b1b0a93f5bd54.jpg")),
          Row(children: [
            Expanded(
                child: Text("Mingyu",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Kim Min-gyu (Korean: 김민규; born April 6, 1997), known mononymously as Mingyu (민규), is a South Korean rapper and singer. Managed by Pledis Entertainment, he is a member of the idol group Seventeen and its Hip Hop Team.")
        ],
      ),
    );
  }
}
