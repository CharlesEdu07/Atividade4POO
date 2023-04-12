import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final Function changeColor;

  Navbar({required this.changeColor});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text('Troque as cores do app',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.colorize),
            title: const Text('Vermelho',
                style: TextStyle(
                  color: Colors.red,
                )),
            onTap: () {
              changeColor(Colors.red);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.colorize),
            title: const Text('Verde',
                style: TextStyle(
                  color: Colors.green,
                )),
            onTap: () {
              changeColor(Colors.green);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.colorize),
            title: const Text('Azul',
                style: TextStyle(
                  color: Colors.blue,
                )),
            onTap: () {
              changeColor(Colors.blue);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
