import 'package:flutter/material.dart';
import 'package:my_app/mynew_widget.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: MyNewWidget(
        Color.fromARGB(255, 65, 194, 254), Color.fromARGB(255, 78, 237, 255)),
  )));
}
