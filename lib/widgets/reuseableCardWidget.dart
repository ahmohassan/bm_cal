// ignore_for_file: file_names

import 'package:bm_cal/constants/constants.dart';
import 'package:flutter/material.dart';

class reuseableWidget extends StatelessWidget {
  reuseableWidget({this.child, this.ontap, this.Selected = false});

  final Widget? child;
  final Function()? ontap;
  final bool Selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Selected == true ? KActiveCardColor : KInActiveCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
