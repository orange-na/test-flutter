import 'package:flutter/material.dart';

void main() {
  final col =
      Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
    Text('Hello World'),
    Text('Hello World'),
    Text('Hello World'),
  ]);

  final app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: col,
      ),
    ),
  );

  runApp(app);
}
