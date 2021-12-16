// ignore_for_file: prefer_const_constructors

import 'package:bm_cal/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final Function()? onTap;
  final String? title;

  const CustomBottom({Key? key,required this.onTap,required this.title}) : super(key: key);

  // const CustomBottom({required this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onTap,
      fillColor: KBottonContainerColor,
      constraints: BoxConstraints().tighten(
        width: double.infinity,
        height: 56,
      ),
      child: Text(
        title ?? 'Calculate', // means if u dont any value take this
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
