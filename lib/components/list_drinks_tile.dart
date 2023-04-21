import 'package:flutter/material.dart';

class ListDrinksTile extends StatelessWidget {
  final List<Map<String, Object>> objects;
  final List<String> columnNames;
  final List<String> propertyNames;
  final icon;

  ListDrinksTile({
    required this.objects,
    required this.icon,
    required this.columnNames,
    required this.propertyNames,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: objects.isEmpty
            ? Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 150),
                    const Text(
                      'Nenhum item cadastrado',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        'assets/images/waiting.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              )
            : ListView(
                children: [
                  ...objects.map((object) {
                    return Column(children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(icon),
                        ),
                        title: Text("${object[propertyNames[0].toString()]}"),
                        subtitle: Text(
                            "${columnNames[0]}: ${object[propertyNames[1].toString()]}"),
                        trailing: Text(
                            "${columnNames[1]}: ${object[propertyNames[2].toString()]}"),
                      ),
                    ]);
                  }).toList(),
                ],
              ));
  }
}
