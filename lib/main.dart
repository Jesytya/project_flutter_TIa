import 'package:flutter/material.dart'; // wajib

import 'bottomNav.dart';
import 'home.dart';

void main() {
  runApp(MyJes());
}

class MyJes extends StatelessWidget {
  const MyJes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottonNav());
  }
}
