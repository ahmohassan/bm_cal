// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class RoundBottom extends StatelessWidget {
  final IconData iconData;
  final Function()? onpress;

  RoundBottom({required this.iconData, this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      fillColor: Colors.grey,
      child: Icon(iconData),
      // child: mm(iconData),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 50, height: 50),
    );
  }
}

// Widget mm(IconData a) {
//   return Icon(a, color: Colors.red,);
// }
