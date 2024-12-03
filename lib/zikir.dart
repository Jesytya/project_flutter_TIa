import 'package:flutter/material.dart';

class Zikir extends StatefulWidget {
  final String? judul, arab, latin, arti;

  const Zikir({Key? key, this.judul, this.arab, this.latin, this.arti})
      : super(key: key);

  @override
  State<Zikir> createState() => _ZikirState();
}

class _ZikirState extends State<Zikir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffa58ef6), // Purple app bar
        title: Text(
          widget.judul ?? "Dzikir Details", // Title fallback if judul is null
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/474x/ed/da/ef/eddaef0e5029aa3aa6b9f3d77a5df8fe.jpg", // URL gambar
                ),
                fit: BoxFit.cover, // Menyesuaikan ukuran gambar dengan layar
              ),
            ),
          ),
          // Content with scrolling
          SingleChildScrollView(
            padding:
                const EdgeInsets.all(16.0), // Adds padding around the content
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align content to the left
              children: [
                const SizedBox(height: 16), // Adds space below the title
                Text(
                  widget.arab ??
                      "No Arabic Text Provided", // Fallback if arab is null
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontFamily: 'Amiri', // Custom font for ayat
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xff56001d), // Text color to contrast with bg
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16), // Adds space below the ayat

                Text(
                  widget.latin ??
                      "No Latin Text Provided", // Fallback if latin is null
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16), // Adds space below the latin

                Text(
                  widget.arti ??
                      "No Translation Provided", // Fallback if arti is null
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
