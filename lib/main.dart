import 'package:flutter/material.dart';
import 'package:mobile/menu.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Menu(),
    );
  }
}
