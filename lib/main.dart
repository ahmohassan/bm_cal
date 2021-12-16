// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    home: myhome(),
    theme: ThemeData.dark().copyWith(
      primaryColor: KActiveCardColor,
      scaffoldBackgroundColor: Color(0xFF1D1E33),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
