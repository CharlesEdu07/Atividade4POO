import 'package:flutter/material.dart';

class BottomNavbarItems extends StatelessWidget {
  const BottomNavbarItems({super.key});

  void _onItemTapped(int index) {
    print("Tocaram no item $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: _onItemTapped, items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.coffee_outlined),
        label: 'Café',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_drink_outlined),
        label: 'Cerveja',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.flag_outlined),
        label: 'Nações',
      ),
    ]);
  }
}
