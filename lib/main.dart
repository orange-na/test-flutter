import 'package:flutter/material.dart';
import 'package:practice/counter.dart';

void main() {
  // 関数
  handleClick() {
    debugPrint('Hello World');
  }

  final btn = ElevatedButton(
    onPressed: handleClick,
    child: const Text('Click Me'),
  );

  final col =
      Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
    Text('Hello World'),
    Text('Hello World'),
    Text('Hello World'),
  ]);

  final img = Image.asset('assets/images/photo.jpg');

  final con = Container(
    color: Colors.blueAccent,
    width: 200,
    height: 200,
    child: img,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
  );

  final app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: Counter(number: 999),
      ),
    ),
  );

  runApp(app);
}
