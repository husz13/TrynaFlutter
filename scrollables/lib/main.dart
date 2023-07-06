import 'package:flutter/material.dart';
import 'package:scrollables/home_screen.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: SingleChildScrollView(child: Home()),
  )));
}
