import 'package:flutter/material.dart';

class SliderInput extends StatefulWidget {
  const SliderInput({Key? key}) : super(key: key);

  @override
  State<SliderInput> createState() => _SliderInputState();
}

class _SliderInputState extends State<SliderInput> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Slider(
          max: 10,
            min: 0,
            divisions: 10,
            label: sliderValue.toString(),
            value: sliderValue,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });
            })
      ]),
    );
  }
}
