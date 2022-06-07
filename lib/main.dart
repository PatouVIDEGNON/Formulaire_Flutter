import 'package:flutter/material.dart';
import 'package:formulaire_flutter/screens/home_screen.dart';

void main() => runApp(const FormulaireFlutter());
class FormulaireFlutter extends StatelessWidget {
  const FormulaireFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen(),);
  }
}
