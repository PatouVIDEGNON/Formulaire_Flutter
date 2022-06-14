import 'package:flutter/material.dart';

class SwitchInput extends StatefulWidget {
  const SwitchInput({Key? key}) : super(key: key);

  @override
  State<SwitchInput> createState() => _SwitchInputState();
}

class _SwitchInputState extends State<SwitchInput> {
  bool switchState = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SwitchListTile(
            title: Text('Changer de mode'),
            value: switchState,
            onChanged: (bool value){
              setState((){
                switchState = value;
              });
            },
          )
        ],
      ),
    );
  }
}
