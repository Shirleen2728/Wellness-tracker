// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class SelfCareScreen extends StatelessWidget {
  const SelfCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Self-Care')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Self-Care',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text('Track habits, water, sleep and mood.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Mark habit done')),
                );
              },
              child: const Text('Mark habit done'),
            ),
          ],
        ),
      ),
    );
  }
}
