import 'package:flutter/material.dart';
import 'package:formulaire_flutter/widgets/input.dart';

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
          children: const [Input()],
        ),
      ),
    );
  }
}
