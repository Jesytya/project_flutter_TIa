import 'package:flutter/material.dart';

class MoonJun extends StatelessWidget {
  const MoonJun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffa58ef6),
          title:
              Text("Moon Jun", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/d6/6b/20/d66b20d76a9dca3547a1d1af7315ec9e.jpg")),
          Row(children: [
            Expanded(
                child:
                    Text("Jun", style: TextStyle(fontWeight: FontWeight.bold))),
            Icon(Icons.favorite, size: 30.0, color: Color(0xfff71f10)),
          ]),
          Text(
              "Wen Junhui (Chinese: 文俊辉; Korean: 문준휘; born June 10, 1996), professionally known by his stage name Jun (Korean: 준), is a Chinese singer, dancer, and actor based in South Korea and China. He is a member of the South Korean boy group Seventeen.")
        ],
      ),
    );
  }
}
