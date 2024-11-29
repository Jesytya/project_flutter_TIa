import 'package:flutter/material.dart'; // Assuming this contains your main Do'a screen
import 'Home.dart';
import 'profil.dart'; // Assuming this contains your Profile screen

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selectedIndex = 0;

  // List of widgets for different screens
  static const List<Widget> widgetOptions = <Widget>[
    Home(),
    Profil(),
  ];

  // Function to handle tab selection
  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          widgetOptions.elementAt(selectedIndex), // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: "Profile",
          ),
        ],
        currentIndex: selectedIndex, // Highlight the selected item
        selectedItemColor: Color(0xffa58ef6), // Customize active item color
        unselectedItemColor: Colors.grey, // Customize inactive item color
        onTap: onTapped, // Handle tap events
      ),
    );
  }
}
