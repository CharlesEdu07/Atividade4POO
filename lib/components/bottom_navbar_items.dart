import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavbarItems extends HookWidget {
  final List buttons;

  BottomNavbarItems({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    print("Build da classe: " + this.toStringShort());

    var selectedIndex = useState(1);

    return BottomNavigationBar(
      onTap: (index) {
        selectedIndex.value = index;
      },
      currentIndex: selectedIndex.value,
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
