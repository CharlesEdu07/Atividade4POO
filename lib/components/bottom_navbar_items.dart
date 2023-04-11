import 'package:flutter/material.dart';

class BottomNavbarItems extends StatelessWidget {
  final List buttons;

  BottomNavbarItems({required this.buttons});

  void _onItemTapped(int index) {
    print("Tocaram no item $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: buttons
          .map(
            (button) => BottomNavigationBarItem(
              icon: Icon(button["icon"]),
              label: button["label"],
            ),
          )
          .toList(),
    );
  }
}
