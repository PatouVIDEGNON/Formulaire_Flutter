import 'package:flutter/material.dart';

class DropDownInput extends StatefulWidget {
  const DropDownInput({Key? key}) : super(key: key);

  @override
  State<DropDownInput> createState() => _DropDownInputState();
}

class _DropDownInputState extends State<DropDownInput> {
  var dropdownItem = <String>["PHP", "Javascrip", "C++", "Dart"];
  String valueSelectionnerParDefaut = 'C++';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        DropdownButton(
          value: valueSelectionnerParDefaut,
          items: dropdownItem.map((String item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              valueSelectionnerParDefaut = value!;
            });
          },
        ),
      ],
    ));
  }
}
