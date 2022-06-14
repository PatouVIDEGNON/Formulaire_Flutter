import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final nomController = TextEditingController();
  final formKey = GlobalKey<FormState>(); // c'est coe le document.getElementId

  @override
  void dispose() {
    nomController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Form(
          // ce key permet de definir de facon unique cette formulaire,
          key: formKey,
          // Un text formFiel est dotée d'un validator de champ integrer
          child: TextFormField(
            // le validateur te permet de faire une validation sur ton champs de formulaire
            validator: (String? value) {
              print('Validator Called');
              return (value != null && value.contains('@')) ? 'le nom ne doit pas contenir @' : null;
            },
            maxLength: 12,
            //controller: nomController,
            initialValue: '',
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Nom *',
            ),
          ),
        ),
        // un TextFormField() contient un TextField()
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            //print(' ${nomController.text}');
            // le ? veut dire securité null,
            print(formKey.currentState?.validate());
          },
          child: Text("Valider"),
        ),
      ],
    );
    ;
  }
}
