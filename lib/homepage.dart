// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intersection/intersection.dart';
import 'package:intersection/cartesian_product.dart';
import 'package:intersection/symettric_difference.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Set Intersection'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetIntersection()),
                  );
                },
                child: const Text('Calculate Intersection'),
              ),
              //add a button to navigate to the symettric difference screen
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetSymettricDifference()),
                  );
                },
                child: const Text('Calculate Symettric Difference'),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartesianProductScreen()),
                  );
                },
                child: const Text('Calculate Cartesian Product'),
              ),
            ],
          ),
        ));
  }
}
