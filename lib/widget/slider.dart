import 'package:flutter/material.dart';

// class SlidertoCard extends StatefulWidget {
//   final Color colorSlider;
//   SlidertoCard({this.colorSlider});
//   @override
//   _SlidertoCardState createState() => _SlidertoCardState();
// }

// class _SlidertoCardState extends State<SlidertoCard> {
//   @override
//   Widget build(BuildContext context) {
//     double _sliderValue = 30;
//     return
//         // Slider(
//         //   value: _sliderValue,
//         //   min: 0,
//         //   max: 100,
//         //   activeColor: Colors.red,
//         //   inactiveColor: Colors.amber,
//         //   divisions: 100 ,
//         //   label: _sliderValue.round().toString(),
//         //   onChanged: (value) {

//         //       print('object $value');
//         //       _sliderValue = value;

//         //   },
//         // );
//         Slider(
//             min: 1,
//             max: 200,
//             divisions: 200,
//             label: _sliderValue.round().toString(),
//             activeColor: Colors.orange,
//             inactiveColor: Colors.amber,
//             value: _sliderValue,
//             onChanged: (newvalue) {
//               newvalue = newvalue.roundToDouble();
//               print('Value: $newvalue');
//               _sliderValue = newvalue;
//             });
//   }
// }
class SlidertoCard extends StatefulWidget {
  final Color? colorActive;
  final Color? colorInactive;

  SlidertoCard({this.colorActive, this.colorInactive});

  @override
  _SlidertoCardState createState() => _SlidertoCardState();
}

class _SlidertoCardState extends State<SlidertoCard> {
  @override
  Widget build(BuildContext context) {
    double _sliderValue = 30;
    return Row(
      children: [
        Container(
          //color: Colors.amber,
          height: 20,
          width: 220,
          child: Slider(
              min: 1,
              max: 200,
              divisions: 200,
              label: _sliderValue.round().toString(),
              activeColor: widget.colorActive,
              inactiveColor: widget.colorInactive,
              value: _sliderValue,
              onChanged: (newvalue) {
                setState(() {
                  newvalue = newvalue.roundToDouble();
                  print('Value: $newvalue');
                  _sliderValue = newvalue;
                });
              }),
        ),
      ],
    );
  }
}
