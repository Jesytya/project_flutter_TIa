import 'package:flutter/material.dart';

import 'package:latihan/bottom.dart';

import 'login.dart';

void main() {
  runApp(MyJes());
}

class MyJes extends StatelessWidget {
  const MyJes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}
