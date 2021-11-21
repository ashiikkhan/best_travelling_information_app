import 'package:flutter/material.dart';
import 'package:class_ten/homeScreen.dart';

void main() {
  runApp(CountryApp());
}

class CountryApp extends StatelessWidget {
  const CountryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}


