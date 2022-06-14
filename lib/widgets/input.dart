// la premiere chose pour gerer l'etat c'est le statefullwidget
// ou encore le provider, ou encore le block, scoop model, redus, mobX.
import 'package:flutter/material.dart';
class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  // Todo2 : initialisation  de loginController de type TextEditingCOntroller
  final loginController = TextEditingController();
  final emailController = TextEditingController();
  final nomController = TextEditingController();
  final prenomController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //TODO ecoutons les changement operer sur le loginController;
    loginController.addListener(_printlatestValue);
    print('valeur du textField : $loginController'); //
  /*  print('Mounted');
    setState(() {
      print('Rendu');
    });*/

  }
  // Todo:  obligatoire  quand on utilise un textEditingController
  // N'oubliez pas de disposer du TextEditing Controller  lorqu'il n'est plus neccessaire.
  @override
  void dispose(){
    loginController.dispose();
    super.dispose();

  }
  void _printlatestValue() {
    print('valeur du textField : ${loginController}');
  }
  String login = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          // Todo1 : Associer in textEditingController a la propriété.
          controller: loginController,
          onChanged: (text) {
            // le text represente la valeur saisi par le user.
            //print('Change ! $text' );
            setState(() {
              //   print('Change ! $text' );
              login = text;
            });
          },
          obscureText: false,
          // utile pour les mots de passe. Passer un methode privé _showOrHide()
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Login',
            border: OutlineInputBorder(),
            labelText: 'Login',
          ),

          /*onSubmitted: (String text) async {
            await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Merci'),
                    content: Text(
                        'Tu as tapé $text, qui à une longueur de ${text.characters.length}'),
                  );
                });
          },*/
        ),
        ElevatedButton(
          onPressed: () {
            // TODO : Get the operate value.
            print('Valeur saisie : ${loginController.text}');
          },
          child: Text("Valider"),
        ),
        Card(
          child: Text(
            'Boujour : $login ',
          ),
        ),
      ],
    );
  }
}

