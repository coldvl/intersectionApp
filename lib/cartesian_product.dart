// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CartesianProductScreen extends StatefulWidget {
  const CartesianProductScreen({super.key});

  @override
  _CartesianProductScreenState createState() => _CartesianProductScreenState();
}

class _CartesianProductScreenState extends State<CartesianProductScreen> {
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  List<String> _list1 = [];
  List<String> _list2 = [];
  List<List<String>> _result = [];

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    super.dispose();
  }

  void _calculateCartesianProduct() {
    _list1 = _textController1.text.split(' ');
    _list2 = _textController2.text.split(' ');
    _result = [];
    for (var i = 0; i < _list1.length; i++) {
      for (var j = 0; j < _list2.length; j++) {
        _result.add([_list1[i], _list2[j]]);
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartesian Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textController1,
              decoration:
                  const InputDecoration(labelText: 'Enter values for Set A'),
            ),
            TextField(
              controller: _textController2,
              decoration:
                  const InputDecoration(labelText: 'Enter values for Set B'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateCartesianProduct,
              child: const Text('Calculate Cartesian Product'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _result.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_result[index].join(' x ')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
