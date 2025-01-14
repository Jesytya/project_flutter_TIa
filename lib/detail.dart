import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String? name, image, description, kisah, kisah2;

  Detail(
      {Key? key,
      this.name,
      this.image,
      this.description,
      this.kisah,
      this.kisah2})
      : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/474x/ed/da/ef/eddaef0e5029aa3aa6b9f3d77a5df8fe.jpg', // Gambar latar
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor:
                  const Color(0xffa58ef6).withOpacity(0.8), // Transparansi
              title: Text(
                widget.name ?? "Kisah Details", // Judul fallback jika name null
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              elevation: 0, // Hilangkan bayangan AppBar
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.all(16.0), // Margin di sekitar konten
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16), // Jarak atas

                      // Bagian Image
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              12), // Membuat sudut melengkung
                          child: widget.image != null
                              ? Image.network(
                                  widget.image!,
                                  height: 200,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )
                              : Container(
                                  height: 200,
                                  width: double.infinity,
                                  color: Colors.grey.shade300,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "No Image Available",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                        ),
                      ),

                      const SizedBox(height: 16), // Jarak antar elemen

                      // Bagian Description
                      Text(
                        widget.description ?? "No description Provided",
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 16), // Jarak antar elemen

                      // Bagian Kisah
                      Text(
                        widget.kisah ?? "No Translation Provided",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Bagian Kisah 2
                      Text(
                        widget.kisah2 ?? "No Translation Provided",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
