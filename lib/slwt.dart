import 'package:flutter/material.dart';

class Swlt extends StatefulWidget {
  final String? judul, arab, latin, arti;

  const Swlt({Key? key, this.judul, this.arab, this.latin, this.arti})
      : super(key: key);

  @override
  State<Swlt> createState() => _SwltState();
}

class _SwltState extends State<Swlt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/474x/ed/da/ef/eddaef0e5029aa3aa6b9f3d77a5df8fe.jpg', // Ganti dengan URL gambar latar
            ),
            fit: BoxFit.cover, // Menyesuaikan gambar dengan layar
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor:
                  const Color(0xffa58ef6).withOpacity(0.8), // Transparansi
              title: Text(
                widget.judul ?? "Do'a Details", // Title fallback if doa is null
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              elevation: 0, // Hilangkan bayangan AppBar
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(
                    16.0), // Adds padding around the content
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align content to the left
                  children: [
                    // arabic section with spacing
                    const SizedBox(height: 16), // Adds space below the title
                    Text(
                      widget.arab ??
                          "No Ayat Provided", // Fallback if ayat is null
                      textDirection: TextDirection.rtl,
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
                          "No Latin Provided", // Fallback if latin is null
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 16), // Adds space below the latin

                    // arti section
                    Text(
                      widget.arti ??
                          "No Translation Provided", // Fallback if artinya is null
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
