import 'package:flutter/material.dart'; //wajib

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa58ef6),
        title: Text("SevenTen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListTile(
                title: Text("S.Coups"),
                subtitle: Text("08 August 1995"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/enabled/474x/da/c4/34/dac4346a9ec858a152e440178e4ca951.jpg")),
              ),
              ListTile(
                title: Text("Jeonghan"),
                subtitle: Text("04 Oktober 1995"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/04/0e/11/040e1143307a96aa606c6dac22b2f206.jpg")),
              ),
              ListTile(
                title: Text("Joshua"),
                subtitle: Text("30 Desember 1995"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/enabled/474x/1e/c0/69/1ec069cd8e3ce01f9fd097b1b08b0726.jpg")),
              ),
              ListTile(
                title: Text("Moon Jun"),
                subtitle: Text("10 Juni 1996"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/d6/6b/20/d66b20d76a9dca3547a1d1af7315ec9e.jpg")),
              ),
              ListTile(
                title: Text("Wonwoo"),
                subtitle: Text("17 Juli 1996"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/9f/2d/bf/9f2dbf6306741e7f4fec1265d4c661d2.jpg")),
              ),
              ListTile(
                title: Text("Wozzi"),
                subtitle: Text("22 November 1996"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/17/f4/3a/17f43a6f2beaa3ae3fa61109450d790e.jpg")),
              ),
              ListTile(
                title: Text("Hoshi"),
                subtitle: Text("15 Juni 1996"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/3a/4e/8a/3a4e8a10534bf588a227d5f0e54d3ba3.jpg")),
              ),
              ListTile(
                title: Text("DK"),
                subtitle: Text("18 Februari 1997"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/0b/63/8b/0b638b98926dd31e96e7da50e9c901d5.jpg")),
              ),
              ListTile(
                title: Text("Mingyu"),
                subtitle: Text("06 April 1997"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/236x/2b/d9/92/2bd992b88cb069f09f7b1b0a93f5bd54.jpg")),
              ),
              ListTile(
                title: Text("Minghao"),
                subtitle: Text("22 OKtober 2024"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/76/4a/b3/764ab31ebdde4019f15d6e62ca06f725.jpg")),
              ),
              ListTile(
                title: Text("Seungkuan"),
                subtitle: Text("16 Januari 1998"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/e0/d8/10/e0d810cd722cb8f43a02773a21471ddb.jpg")),
              ),
              ListTile(
                title: Text("Vernon"),
                subtitle: Text("18 Februari 1998"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/enabled/474x/a8/77/c3/a877c374dc4d04abc5a440f021f4bb83.jpg")),
              ),
              ListTile(
                title: Text("Dino"),
                subtitle: Text("11 Februari 1999"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/cd/88/18/cd8818c10ffbd8661f5b2838705ebb7a.jpg")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
