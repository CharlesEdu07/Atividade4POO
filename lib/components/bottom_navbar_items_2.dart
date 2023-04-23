import 'package:flutter/material.dart';

class BottomNavbarItems2 extends StatefulWidget {
  final List buttons;

  const BottomNavbarItems2({super.key, required this.buttons});

  @override
  State<BottomNavbarItems2> createState() => _BottomNavbarItems2State();
}

class _BottomNavbarItems2State extends State<BottomNavbarItems2> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build da classe: " + this.toStringShort());
    return BottomNavigationBar(
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: widget.buttons
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
