import 'package:flutter/material.dart';
//import 'package:formulaire_flutter/widgets/input.dart';
import 'package:formulaire_flutter/widgets/input_form.dart';

import '../widgets/checkbox_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueil',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: const [
            //InputForm(),
           // Input(),
            Expanded(child: CheckBoxInput(),),
          ],
        ),
      ),
    );
  }
}
