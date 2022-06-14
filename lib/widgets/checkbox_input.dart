import 'package:flutter/material.dart';

class CheckBoxInput extends StatefulWidget {
  const CheckBoxInput({Key? key}) : super(key: key);

  @override
  State<CheckBoxInput> createState() => _CheckBoxInputState();
}

class _CheckBoxInputState extends State<CheckBoxInput> {
  bool isChecked = false;
final Color couleur = Colors.deepOrangeAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
        child: Column(children: [
          CheckboxListTile(
            activeColor: Colors.deepOrangeAccent,
            secondary: const Icon(Icons.heart_broken), // c'est comme le leading dans listTile
            subtitle: Text('Dormir c\'est pas bon hein'),
            title: Text('Aime dormir'),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                // Todo : print(value); et voir,
               // print(value);
                isChecked = value!;
              });
            },
          ),
          Checkbox(
            value: true,
            onChanged: (bool? value) {},
          )
        ]),
      ),
    );
  }
}
