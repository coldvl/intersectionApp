// This file contains the code for the intersection page

import 'package:flutter/material.dart';

class SetIntersection extends StatefulWidget {
  const SetIntersection({super.key});

  @override
  _SetIntersectionState createState() => _SetIntersectionState();
}

class _SetIntersectionState extends State<SetIntersection> {
  final TextEditingController _set1Controller = TextEditingController();
  final TextEditingController _set2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  void _calculateIntersection() {
    // Get the sets from the text fields
    Set<int> set1 = _parseSet(_set1Controller.text);
    Set<int> set2 = _parseSet(_set2Controller.text);

    // Calculate the intersection
    Set<int> intersection = set1.intersection(set2);

    // Update the result text field
    _resultController.text = intersection.toString();
  }

  Set<int> _parseSet(String text) {
    // Split the text into individual numbers
    List<String> numbers = text.split(' ');

    // Convert each number to an integer and add it to the set
    Set<int> set = <int>{};
    for (String number in numbers) {
      set.add(int.parse(number));
    }

    return set;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Set Intersection'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _set1Controller,
                decoration: const InputDecoration(labelText: 'Set 1'),
              ),
              TextField(
                controller: _set2Controller,
                decoration: const InputDecoration(labelText: 'Set 2'),
              ),
              ElevatedButton(
                onPressed: _calculateIntersection,
                child: const Text('Calculate Intersection'),
              ),
              TextField(
                controller: _resultController,
                decoration: const InputDecoration(labelText: 'Intersection'),
              ),
            ],
          ),
        ));
  }
}
