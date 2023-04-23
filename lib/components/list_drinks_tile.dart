import 'package:flutter/material.dart';

class ListDrinksTile extends StatelessWidget {
  final List<Map<String, Object>> drinks;
  final icon;

  ListDrinksTile({
    required this.drinks,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: drinks.isEmpty
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
            : ListView.builder(
                itemCount: drinks.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(icon),
                      ),
                      title: Text(drinks[index]['name'].toString()),
                      subtitle: Text(drinks[index]['style'].toString()),
                      trailing: Text(drinks[index]['ibu'].toString()),
                    ),
                  );
                },
              )
            );
  }
}
