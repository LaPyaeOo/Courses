import 'package:flutter/material.dart';
import 'package:house_app_ui/homePage/home_screen.dart';

void main(List<String> args) {
  runApp(
   Starter(),
  );
}
class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}