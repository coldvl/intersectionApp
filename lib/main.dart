// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intersection/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow)
            .copyWith(secondary: const Color.fromARGB(255, 255, 168, 1)),
      ),
      home: const HomePage(),
    );
  }
}
