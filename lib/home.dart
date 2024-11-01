// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart'; //wajib
import 'package:latihan/jeonghan.dart';
import 'package:latihan/joshua.dart';
import 'dino.dart';
import 'dk.dart';
import 'hoshi.dart';
import 'minghao.dart';
import 'mingyu.dart';
import 'scoups.dart';
import 'jun.dart';
import 'seungkuan.dart';
import 'vernon.dart';
import 'wonwoo.dart';
import 'woozi.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f2ff),
      appBar: AppBar(
        backgroundColor: Color(0xffa58ef6),
        leading: Icon(Icons.flutter_dash),
        title: Text("SevenTeen", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: <Widget>[Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Scoups()));
                },
                child: ListTile(
                  title: Text("S.Coups",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("08 August 1995"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/enabled/474x/da/c4/34/dac4346a9ec858a152e440178e4ca951.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Jeonghan()));
                },
                child: ListTile(
                  title: Text("Jeonghan",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("04 Oktober 1995"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/04/0e/11/040e1143307a96aa606c6dac22b2f206.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Joshua()));
                },
                child: ListTile(
                  title: Text("Joshua",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("30 Desember 1995"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/enabled/474x/1e/c0/69/1ec069cd8e3ce01f9fd097b1b08b0726.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MoonJun()));
                },
                child: ListTile(
                  title: Text("Moon Jun",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("10 Juni 1996"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/d6/6b/20/d66b20d76a9dca3547a1d1af7315ec9e.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wonwoo()));
                },
                child: ListTile(
                  title: Text("Wonwoo",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("17 Juli 1996"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/9f/2d/bf/9f2dbf6306741e7f4fec1265d4c661d2.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Woozi()));
                },
                child: ListTile(
                  title: Text("Woozi",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("22 November 1996"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/17/f4/3a/17f43a6f2beaa3ae3fa61109450d790e.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hoshi()));
                },
                child: ListTile(
                  title: Text("Hoshi",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("15 Juni 1996"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/3a/4e/8a/3a4e8a10534bf588a227d5f0e54d3ba3.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DK()));
                },
                child: ListTile(
                  title:
                      Text("DK", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("18 Februari 1997"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/0b/63/8b/0b638b98926dd31e96e7da50e9c901d5.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mingyu()));
                },
                child: ListTile(
                  title: Text("Mingyu",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("06 April 1997"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/236x/2b/d9/92/2bd992b88cb069f09f7b1b0a93f5bd54.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Minghao()));
                },
                child: ListTile(
                  title: Text("Minghao",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("22 OKtober 2024"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/564x/76/4a/b3/764ab31ebdde4019f15d6e62ca06f725.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Seungkuan()));
                },
                child: ListTile(
                  title: Text("Seungkuan",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("16 Januari 1998"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/e0/d8/10/e0d810cd722cb8f43a02773a21471ddb.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Vernon()));
                },
                child: ListTile(
                  title: Text("Vernon",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("18 Februari 1998"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/enabled/474x/a8/77/c3/a877c374dc4d04abc5a440f021f4bb83.jpg")),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dino()));
                },
                child: ListTile(
                  title: Text("Dino",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("11 Februari 1999"),
                  leading: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/cd/88/18/cd8818c10ffbd8661f5b2838705ebb7a.jpg")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
