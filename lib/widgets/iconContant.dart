// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({required this.iconData, required this.title});

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 90,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 24, color: Colors.grey),
        ),
      ],
    );
  }
}