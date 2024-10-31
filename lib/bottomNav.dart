import 'package:flutter/material.dart';
import 'package:latihan/home.dart';
import 'package:latihan/main.dart';

import 'music.dart';
import 'profil.dart';

class BottonNav extends StatefulWidget {
  // class ini sifatnya pablik.. bisa diakses di shalmn lain
  const BottonNav({Key? key}) : super(key: key);

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  // class khusus
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    Home(),
    Music(),
    Profil(),
  ];

  void onTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.headset), label: "Album"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xffa58ef6),
        onTap: onTaped,
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
