// this file is used to find the symettric difference between two sets

import 'package:flutter/material.dart';

class SetSymettricDifference extends StatefulWidget {
  const SetSymettricDifference({super.key});

  @override
  _SetSymettricDifferenceState createState() => _SetSymettricDifferenceState();
}

class _SetSymettricDifferenceState extends State<SetSymettricDifference> {
  final TextEditingController _set1Controller = TextEditingController();
  final TextEditingController _set2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  void _calculateSymettricDifference() {
    // Get the sets from the text fields
    Set<int> set1 = _parseSet(_set1Controller.text);
    Set<int> set2 = _parseSet(_set2Controller.text);

    // Calculate the symettric difference
    Set<int> symettricDifference =
        set1.difference(set2).union(set2.difference(set1));

    // Update the result text field
    _resultController.text = symettricDifference.toString();
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
          title: const Text('Set Symettric Difference'),
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
                onPressed: _calculateSymettricDifference,
                child: const Text('Calculate Symettric Difference'),
              ),
              TextField(
                controller: _resultController,
                decoration: const InputDecoration(labelText: 'Result'),
              ),
            ],
          ),
        ));
  }
}
