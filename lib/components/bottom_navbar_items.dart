import 'package:flutter/material.dart';

class BottomNavbarItems extends StatelessWidget {
  final icons = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.favorite,
    Icons.person,
  ];

  void _onItemTapped(int index) {
    print("Tocaram no item $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: icons.map((icon) {
        return BottomNavigationBarItem(
          icon: Icon(icon),
          label: '',
        );
      }).toList(),
    );
  }
}
