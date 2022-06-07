// la premiere chose pour gerer l'etat c'est le statefullwidget
// ou encore le provider, ou encore le block, scoop model, redus, mobX.
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  void initState() {
    super.initState();
    print('Mounted');
    setState(() {
      print('Rendu');
    });
  }

  String login = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autocorrect: true,
          autofocus: false,
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
        Card(
          child: Text(
            'Boujour : $login ',
          ),
        ),
      ],
    );
  }
}

/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: _controller,
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text(
                      'You typed "$value", which has length ${value.characters.length}.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
*/
