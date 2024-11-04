import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f2ff),
      appBar: AppBar(
        backgroundColor: Color(0xffa58ef6),
        title: Text("Album", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: albums.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Display two items per row
            crossAxisSpacing: 16, // Space between columns
            mainAxisSpacing: 20, // Space between rows
          ),
          itemBuilder: (context, index) {
            return AlbumCard(
              imageUrl: albums[index]['imageUrl']!,
              title: albums[index]['title']!,
            );
          },
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const AlbumCard({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
          child: Image.network(
            imageUrl,
            width: 125,
            height: 125,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

// List of albums
final List<Map<String, String>> albums = [
  {
    "imageUrl":
        "https://i.pinimg.com/474x/ce/32/08/ce32087f11828ddd1b71178a6cc789f1.jpg",
    "title": "Attacca",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/68/7c/de/687cdee285050b778c9169a4f2ad0e03.jpg",
    "title": "17 Heaven",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/64/b9/e8/64b9e818feb379011d934c2b8737af92.jpg",
    "title": "Maestro",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/7a/74/80/7a7480fcb10017237f3888f0ac92b120.jpg",
    "title": "Darl+ing",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/04/30/d5/0430d5a78ef54d901746c079de167ad7.jpg",
    "title": "Your Choice",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/564x/ee/e2/4f/eee24f7383546bcffef68de0faff66cd.jpg",
    "title": "17 Carat",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/5f/3e/33/5f3e33e6251783ec3ae5519a81fb3b99.jpg",
    "title": "Heng:garæ",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/cd/23/76/cd2376e6a039ae2cf4673454a6fe5fab.jpg",
    "title": "F*ck My Life",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/5e/a0/44/5ea044357683c4888e862821bbbabbab.jpg",
    "title": "Face The Sun",
  },
  {
    "imageUrl":
        "https://i.pinimg.com/474x/76/d2/ae/76d2ae946ccd8e1a90a5bdaa27ce5c24.jpg",
    "title": "Spill The Feels",
  },
];
