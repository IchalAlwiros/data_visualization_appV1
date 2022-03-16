import 'package:flutter/material.dart';

class DropdownKu extends StatefulWidget {
  @override
  _DropdownKuState createState() => _DropdownKuState();
}

class _DropdownKuState extends State {
  String? _selectedItem = 'Miliho';
  List _options = ['Miliho', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: Colors.amber,
      child: Column(children: [
        Text("Milih Dino: $_selectedItem"),
        DropdownButton(
          underline: Container(
            height: 2,
            color: Colors.black12,
          ),
          value: _selectedItem,
          items: _options
              .map(
                (day) => DropdownMenuItem(
                  child: Text(day),
                  value: day,
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              _selectedItem = value.toString();
            });
          },
        ),
      ]),
    );
  }
}
