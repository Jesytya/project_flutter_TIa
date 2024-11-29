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
      backgroundColor: const Color(0xfff5f2ff), // Light background color
      appBar: AppBar(
        backgroundColor: const Color(0xffa58ef6), // Purple app bar
        title: Text(
          widget.judul ?? "Dzikir Details", // Title fallback if judul is null
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Adds padding around the content
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            // Ayat section with spacing
            const SizedBox(height: 16), // Adds space below the title
            Text(
              widget.arab ??
                  "No Arabic Text Provided", // Fallback if arab is null
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontFamily: 'Amiri', // Custom font for ayat
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xff56001d),
              ),
            ),
            const SizedBox(height: 16), // Adds space below the ayat

            // Latin section
            Text(
              widget.latin ??
                  "No Latin Text Provided", // Fallback if latin is null
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 16), // Adds space below the latin

            // Artinya section
            Text(
              widget.arti ??
                  "No Translation Provided", // Fallback if arti is null
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
