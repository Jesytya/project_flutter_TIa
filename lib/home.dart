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
                        "https://i.pinimg.com/236x/2b/d9/92/2bd992b88cb069f09f7b1b0a93f5bd54.jpg")),
              ),
              ListTile(
                title: Text("Mingyu"),
                subtitle: Text("22 OKtober 2024"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/236x/2b/d9/92/2bd992b88cb069f09f7b1b0a93f5bd54.jpg")),
              ),
              ListTile(
                title: Text("Jeonghan"),
                subtitle: Text("22 OKtober 2024"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/04/0e/11/040e1143307a96aa606c6dac22b2f206.jpg")),
              ),
              ListTile(
                title: Text("Minghao"),
                subtitle: Text("22 OKtober 2024"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/76/4a/b3/764ab31ebdde4019f15d6e62ca06f725.jpg")),
              ),
              ListTile(
                title: Text("Wonwoo"),
                subtitle: Text("22 OKtober 2024"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/9f/2d/bf/9f2dbf6306741e7f4fec1265d4c661d2.jpg")),
              ),
              ListTile(
                title: Text("Joshua"),
                subtitle: Text("22 OKtober 2024"),
                leading: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/enabled/474x/1e/c0/69/1ec069cd8e3ce01f9fd097b1b08b0726.jpg")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
