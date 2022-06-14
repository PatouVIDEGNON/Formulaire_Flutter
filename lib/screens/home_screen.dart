import 'package:flutter/material.dart';
//import 'package:formulaire_flutter/widgets/input.dart';
import 'package:formulaire_flutter/widgets/input_form.dart';
import 'package:formulaire_flutter/widgets/radio_Input.dart';

import '../widgets/checkbox_input.dart';
import '../widgets/dropdown_input.dart';
import '../widgets/slider_input.dart';
import '../widgets/switch_Input.dart';

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
            //Expanded(child: CheckBoxInput(),),
           // Expanded(child: RadioInput(),),
           // Expanded(child: SwitchInput(),),
           // Expanded(child: SliderInput(),),
            Expanded(child: DropDownInput(),),
          ],
        ),
      ),
    );
  }
}
