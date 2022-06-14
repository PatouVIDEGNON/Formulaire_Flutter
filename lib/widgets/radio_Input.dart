import 'package:flutter/material.dart';

class RadioInput extends StatefulWidget {
  const RadioInput({Key? key}) : super(key: key);

  @override
  State<RadioInput> createState() => _RadioInputState();
}

enum Personne {
  femme,
  homme,
}

class _RadioInputState extends State<RadioInput> {
   Personne _sexe = Personne.femme;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioListTile(
            value: Personne.femme,
            groupValue: _sexe,
            onChanged: (Personne? value){
              setState((){
                _sexe = value!;
              });
            },
            title: Text('femme'),
          ),
          RadioListTile(
            value: Personne.homme,
            groupValue: _sexe,
            onChanged: (Personne? value){
              setState((){
                _sexe = value!;
              });
            },
            title: Text('homme'),
          ),
        ],
      ),
    );
  }
}
