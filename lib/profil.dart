import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f2ff),
      appBar: AppBar(
        backgroundColor: Color(0xffa58ef6),
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: Image.network(
                  "https://i.pinimg.com/474x/a8/5c/a7/a85ca7421e56ead12cf8ef6b8cc956d3.jpg",
                  height: 150, // Adjust image height as needed
                  width: 150, // Make width the same as height for a circle
                  fit: BoxFit
                      .cover, // Ensures the image covers the circular area
                ),
              ),
              SizedBox(height: 16), // Add spacing
              Text(
                "Jesy Wintiya Wulandari",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              SizedBox(height: 8),
              // User Email
              Text(
                'jesywintiya97@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                '@jesywntiya_0',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                '087762615225',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                '22TI009',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 32),
              // Edit Profile Button
              ElevatedButton(
                onPressed: () {
                  // Action for editing profile
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Edit Profile')),
                  );
                },
                child: const Text('Edit Profile'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
