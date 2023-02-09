import 'package:flutter/material.dart';
import 'package:ui_tea_ratkum/pages/homePage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      focusColor: Colors.red,
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        primarySwatch: Colors.orange),
  ));
}
