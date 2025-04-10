import 'package:flutter/material.dart';
import 'package:jared/components/feeling.dart';
import 'package:jared/pages/home-page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
