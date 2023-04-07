import 'package:flutter/material.dart';
import '../models/bottomButtons.dart';

class BottomNavbarItems extends StatelessWidget {
  final bottomButtons = [
    BottomButtons(
      title: "Home",
      icon: Icon(Icons.home_outlined),
    ),
    BottomButtons(
      title: "Business",
      icon: Icon(Icons.business_outlined),
    ),
    BottomButtons(
      title: "School",
      icon: Icon(Icons.school_outlined),
    ),
    BottomButtons(
      title: "Game",
      icon: Icon(Icons.gamepad_outlined),
    ),
    BottomButtons(
      title: "Play",
      icon: Icon(Icons.play_arrow_outlined),
    ),
    BottomButtons(
      title: "Settings",
      icon: Icon(Icons.settings_outlined),
    ),
  ];

  void _onItemTapped(int index) {
    print("Tocaram no item $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: bottomButtons.map((button) {
        return BottomNavigationBarItem(
          icon: button.icon,
          label: button.title,
        );
      }).toList(),
    );
  }
}
