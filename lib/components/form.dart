import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  final void Function(String, String, double) onSubmit;

  const FormTest({required this.onSubmit, super.key});

  @override
  State<FormTest> createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  final nameController = TextEditingController();
  final styleController = TextEditingController();
  final ibuController = TextEditingController();
  String? brandController;
  double? ibu;

  _submitForm() {
    final enteredName = nameController.text;
    final enteredStyle = styleController.text;
    final enteredIbu = double.parse(ibuController.text);

    if (enteredName.isEmpty || enteredStyle.isEmpty || enteredIbu <= 0) {
      return;
    }

    widget.onSubmit(enteredName, enteredStyle, enteredIbu);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  decoration:
                      const InputDecoration(labelText: 'Nome da bebida'),
                  controller: nameController,
                  onSubmitted: (_) => _submitForm(),
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Descrição'),
                  controller: styleController,
                  onSubmitted: (_) => _submitForm(),
                ),
                TextField(
                  controller: ibuController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(labelText: 'Valor (R\$)'),
                ),
                SizedBox(height: 40),
                const Text(
                  "Qual a marca da bebida?",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                RadioListTile(
                  title: Text("Skol"),
                  value: "Skol",
                  groupValue: brandController,
                  onChanged: (value) {
                    setState(() {
                      brandController = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Brahma"),
                  value: "Brahma",
                  groupValue: brandController,
                  onChanged: (value) {
                    setState(() {
                      brandController = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Antarctica"),
                  value: "Antarctica",
                  groupValue: brandController,
                  onChanged: (value) {
                    setState(() {
                      brandController = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Budweiser"),
                  value: "Budweiser",
                  groupValue: brandController,
                  onChanged: (value) {
                    setState(() {
                      brandController = value.toString();
                    });
                  },
                ),
                SizedBox(height: 40),
                Text("IBU: ${ibu?.round()}"),
                Slider(
                  value: ibu ?? 0,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: ibu?.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      ibu = value;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: _submitForm,
                      child: const Text('Adicionar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
