import 'package:flutter/material.dart';
import '/components/bottomnavbaritens.dart';

void main() {
  runApp(const TipsApp());
}

class TipsApp extends StatelessWidget {
  const TipsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicas'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(100),
        child: Column(children: [
          Expanded(
            child: Text("La Fin Du Monde - Bock - 65 ibu"),
          ),
          Expanded(
            child: Text("Sapporo Premiume - Sour Ale - 54 ibu"),
          ),
          Expanded(
            child: Text("Duvel - Pilsner - 82 ibu"),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavbarItems(),
    );
  }
}
