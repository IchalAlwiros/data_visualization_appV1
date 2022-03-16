import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  final String? avatar;
  AvatarCard({this.avatar});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      avatar!,
      height: 35,
    );
  }
}
